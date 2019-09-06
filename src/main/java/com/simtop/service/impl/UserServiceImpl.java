package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.UserDao;
import com.simtop.pojo.Role;
import com.simtop.pojo.SmsPojo;
import com.simtop.pojo.User;
import com.simtop.service.UserService;
import com.simtop.util.AliyunMailUtil;
import com.simtop.util.SmsRandomCodeUtil;
import com.simtop.util.SmsUtil;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    /**
     * 注册业务逻辑类
     * @param userVo
     * @return
     */
    @Override
    public ServerResponse<String> register(UserVo userVo) {
        //保证验证码不能为空
        if(userVo.getCheckCode()==null || "".equals(userVo.getCheckCode())){
            return ServerResponse.createByErrorMsg("验证码不能为空");
        }
        //前端传递的验证码和redis中的checkCode进行比对
        if(!userVo.getCheckCode().equals(redisTemplate.boundValueOps("email_"+userVo.getEmail()).get())){
            return ServerResponse.createByErrorMsg("验证码错误");
        }
        if(userVo.getLoginName()==null || userVo.getLoginName().equals("")){
            return ServerResponse.createByErrorMsg("登陆用户名不能为空");
        }
        if(userVo.getEmail()==null||userVo.getEmail().equals("")){
            return ServerResponse.createByErrorMsg("邮箱不能为空");
        }
        //用户名、邮箱需要唯一
        int resultCount = userDao.checkLoginName(userVo.getLoginName());
        if(resultCount > 0){
            return ServerResponse.createByErrorMsg("登陆用户名已存在");
        }
        resultCount = userDao.checkEmail(userVo.getEmail());
        if(resultCount > 0){
            return ServerResponse.createByErrorMsg("邮箱已存在");
        }
        //userVo <- User
        User user = new User();
        user.setSchool(userVo.getSchool());
        user.setEmail(userVo.getEmail());
        user.setPassword(userVo.getPassword());
        user.setCity(userVo.getCity());
        user.setProvince(userVo.getProvince());
        user.setLoginName(userVo.getLoginName());
        user.setUsername(userVo.getUsername());
        user.setRoleId(userVo.getRoleId());
        resultCount = userDao.insert(user);
        if(resultCount < 0){
            return ServerResponse.createByErrorMsg("用户注册失败");
        }
        return ServerResponse.createBySuccessMsg("注册成功");
    }

    /**
     * 邮箱注册验证码生成逻辑类
     * @param email
     * @return
     */
    @Override
    public ServerResponse<String> generateCheckCode(String email) {
        synchronized (this){
            //邮箱非空验证
            if(email==null||"".equals(email)){
                return ServerResponse.createByErrorMsg("邮箱不能为空,请填入有效地址");
            }
            //生成随机的6位数字验证码
            String verificationCode= SmsRandomCodeUtil.generateRandomSixNum();
            //调用邮箱发送
            AliyunMailUtil.sendMail(email,"浙工商lab用户注册","您的验证码为："+verificationCode+"。此验证码三分钟内有效，请及时注册。"+"<br><br>"+"本邮件是系统自动发送的，请勿直接回复！感谢您的注册，祝您使用愉快！");
//            SmsPojo smsPojo = new SmsPojo();
//            smsPojo.setToAddress(email);
//            smsPojo.setSubject("用户注册");
//            smsPojo.setContent("注册码为："+verificationCode);
//            if(SmsUtil.sendTextMail(smsPojo)){
                //发送成功保存邮箱地址对应的验证码 todo 已解决
                // redis中保存邮箱验证码三分钟 todo 解决安全 一个email对应唯一的验证码
//            Map<String,String> map = new HashMap<>();
//            map.put(email,verificationCode);
//                  redisTemplate.opsForHash().putAll("email",map);
               redisTemplate.boundValueOps("email_"+email).set(verificationCode,180,TimeUnit.SECONDS);
                // todo 发送的验证码拼接了之前的验证码？？ 获取content内容时候出现getContent现象
            // todo 2019年8月28日09:23:18 接口中屏蔽验证码
                return ServerResponse.createBySuccess();
//            }else{
//                return ServerResponse.createByErrorMsg("邮件发送失败");
//            }
        }
    }

    /**
     * 忘记密码时候，根据邮箱返回验证码
     * @param email
     * @return
     */
    @Override
    public ServerResponse<String> forgetSendEmailCode(String email) {
        //验证邮箱是否存在
        int resultCount = userDao.checkEmail(email);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("邮箱不存在！");
        }
        //邮箱非空验证
        if(email==null||"".equals(email)){
            return ServerResponse.createByErrorMsg("邮箱不能为空,请填入有效地址");
        }
        //生成随机的验证码
        String verificationCode= SmsRandomCodeUtil.generateRandomSixNum();
        //调用邮箱发送
        AliyunMailUtil.sendMail(email,"浙工商lab密码重置","您的验证码为："+verificationCode+"。此验证码三分钟内有效，请及时重置密码。"+"<br><br>"+"本邮件是系统自动发送的，请勿直接回复！");
//        SmsPojo smsPojo = new SmsPojo();
//        smsPojo.setToAddress(email);
//        smsPojo.setSubject("忘记密码");
//        smsPojo.setContent("验证码为："+verificationCode);
//        if(SmsUtil.sendTextMail(smsPojo)){
            //发送成功保存邮箱地址对应的验证码 todo 3分钟 已解决
            redisTemplate.boundValueOps("forget_"+email).set(verificationCode,180,TimeUnit.SECONDS);
            return ServerResponse.createBySuccess();
//        }else{
//            return ServerResponse.createByErrorMsg("邮件发送失败");
//        }
    }

    @Override
    public List<User> findAll() {
        List<User> userList = userDao.selectAll();
        return userList;
    }

    @Override
    public ServerResponse<String> insertBackUser(UserVo userVo) {
        // vo <- pojo
        User user = new User();
        user.setRoleId(userVo.getRoleId());
        user.setLoginName(userVo.getLoginName());
        user.setPassword(userVo.getPassword());
        user.setUsername(userVo.getUsername());
        user.setSchool(userVo.getSchool());
        user.setProvince(userVo.getProvince());
        user.setCity(userVo.getCity());
        user.setEmail(userVo.getEmail());
        int resultCount = userDao.insertBackUser(user);
        if(resultCount != 1){
            return ServerResponse.createBySuccess("新增后台用户失败");
        }
        return ServerResponse.createBySuccessMsg("新增后台用户成功");
    }

    @Override
    public ServerResponse<String> deleteByUserId(Integer id) {
        if(id==null){
            return ServerResponse.createByErrorMsg("参数错误");
        }
        int effectNum = userDao.deleteByUserId(id);
        if(effectNum != 1){
            return ServerResponse.createByErrorMsg("删除失败");
        }
        return ServerResponse.createBySuccess("删除成功");
    }

    @Override
    public ServerResponse<String> updateBackendUser(UserVo userVo) {
        // vo <- pojo
        User user = new User();
        user.setRoleId(userVo.getRoleId());
        user.setLoginName(userVo.getLoginName());
        user.setPassword(userVo.getPassword());
        user.setUsername(userVo.getUsername());
        user.setSchool(userVo.getSchool());
        user.setProvince(userVo.getProvince());
        user.setCity(userVo.getCity());
        //修改邮箱 todo 邮箱不能够唯一
        if(userDao.checkEmail(userVo.getEmail())>0){
            return ServerResponse.createByErrorMsg("该邮箱已存在！");
        }
        user.setEmail(userVo.getEmail());
        user.setAddress(userVo.getAddress());
        user.setId(userVo.getId());
        int resultCount = userDao.updateBackendUser(user);
        if(resultCount != 1){
            return ServerResponse.createByErrorMsg("修改后台用户失败");
        }
        return ServerResponse.createBySuccessMsg("修改后台用户成功");
    }

    @Override
    public List<User> findByParams(UserParamsVo params) {
        User user = new User();
        user.setUsername(params.getUsername());
        user.setSchool(params.getSchool());
        user.setLoginName(params.getLoginName());
        List<User> userList = userDao.selectByParams(user);
        return userList;
    }

    @Override
    public ServerResponse<Integer> accountUser() {
        int count = userDao.selectUserCounts();
        return ServerResponse.createBySuccess(count);
    }

    @Override
    public ServerResponse<User> findById(Integer id) {
        User user = userDao.findById(id);
        if(user == null){
            return ServerResponse.createByErrorMsg("查询用户失败");
        }
        return ServerResponse.createBySuccess(user);
    }

    @Override
    public ServerResponse<String> updatePassword(UserVo userVo) {
        String checkCode = (String) redisTemplate.boundValueOps("forget_"+userVo.getEmail()).get();
        if(!userVo.getCheckCode().equals(checkCode)){
            return ServerResponse.createByErrorMsg("验证码错误");
        }
        if(!userVo.getNewPassword().equals(userVo.getConfirmPassword())){
            return ServerResponse.createByErrorMsg("密码不一致，请重新输入");
        }
        User user = new User();
        user.setEmail(userVo.getEmail());
        user.setPassword(userVo.getNewPassword());
        int effectNum = userDao.updatePasswordByEmail(user);
        if(effectNum == 1 ){
            return ServerResponse.createBySuccessMsg("更新密码成功");
        }
        return ServerResponse.createByErrorMsg("更新密码失败");
    }


}
