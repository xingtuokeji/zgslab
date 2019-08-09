package com.simtop.service.impl;

import com.simtop.common.ServerResponse;
import com.simtop.dao.UserDao;
import com.simtop.pojo.Role;
import com.simtop.pojo.SmsPojo;
import com.simtop.pojo.User;
import com.simtop.service.UserService;
import com.simtop.util.SmsRandomCodeUtil;
import com.simtop.util.SmsUtil;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.concurrent.TimeUnit;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private UserDao userDao;

    @Override
    public ServerResponse<String> register(UserVo userVo) {
        if(userVo.getCheckCode()==null || "".equals(userVo.getCheckCode())){
            return ServerResponse.createByErrorMsg("验证码不能为空");
        }
        if(!userVo.getCheckCode().equals(redisTemplate.boundValueOps("email").get())){
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
        Role role = new Role();
        role.setId(userVo.getRoleId());
        user.setRoleId(role);
        resultCount = userDao.insert(user);
        if(resultCount < 0){
            return ServerResponse.createByErrorMsg("用户注册失败");
        }
        return ServerResponse.createBySuccessMsg("注册成功");
    }

    @Override
    public ServerResponse<String> checkCode(String email) {
        //邮箱非空验证
        if(email==null||"".equals(email)){
            return ServerResponse.createByErrorMsg("邮箱不能为空,请填入有效地址");
        }
        //生成随机的验证码
        String verificationCode= SmsRandomCodeUtil.generateRandomSixNum();
        //调用邮箱发送
        SmsPojo smsPojo = new SmsPojo();
        smsPojo.setToAddress(email);
        smsPojo.setContent(smsPojo.getContent()+verificationCode);
        if(SmsUtil.sendTextMail(smsPojo)){
            //发送成功保存邮箱地址对应的验证码 todo
            redisTemplate.boundValueOps("email").set(verificationCode,180,TimeUnit.SECONDS);
            System.out.println(redisTemplate.boundValueOps("email").get());
            return ServerResponse.createBySuccess(verificationCode);
        }else{
            return ServerResponse.createByErrorMsg("邮件发送失败");
        }
    }

    @Override
    public ServerResponse<String> forgetSendEmailCode(String email) {
        //邮箱非空验证
        if(email==null||"".equals(email)){
            return ServerResponse.createByErrorMsg("邮箱不能为空,请填入有效地址");
        }
        //生成随机的验证码
        String verificationCode= SmsRandomCodeUtil.generateRandomSixNum();
        //调用邮箱发送
        SmsPojo smsPojo = new SmsPojo();
        smsPojo.setToAddress(email);
        smsPojo.setContent(smsPojo.getContent()+verificationCode);
        if(SmsUtil.sendTextMail(smsPojo)){
            //发送成功保存邮箱地址对应的验证码 todo
            redisTemplate.boundValueOps("forget_email").set(verificationCode,180,TimeUnit.SECONDS);
            System.out.println(redisTemplate.boundValueOps("forget_email").get());
            return ServerResponse.createBySuccess(verificationCode);
        }else{
            return ServerResponse.createByErrorMsg("邮件发送失败");
        }
    }

    @Override
    public ServerResponse<List<User>> findAll() {
        List<User> userList = userDao.selectAll();
        return ServerResponse.createBySuccess(userList);
    }

    @Override
    public ServerResponse<String> insertBackUser(UserVo userVo) {
        // vo <- pojo
        User user = new User();
        Role role = new Role();
        role.setId(userVo.getRoleId());
        user.setRoleId(role);
        user.setLoginName(userVo.getLoginName());
        user.setPassword(userVo.getPassword());
        user.setUsername(userVo.getUsername());
        user.setSchool(userVo.getSchool());
        user.setProvince(userVo.getProvince());
        user.setCity(userVo.getCity());
        user.setEmail(userVo.getEmail());
        user.setAddress(userVo.getAddress());
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
        Role role = new Role();
        role.setId(userVo.getRoleId());
        user.setRoleId(role);
        user.setLoginName(userVo.getLoginName());
        user.setPassword(userVo.getPassword());
        user.setUsername(userVo.getUsername());
        user.setSchool(userVo.getSchool());
        user.setProvince(userVo.getProvince());
        user.setCity(userVo.getCity());
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
    public ServerResponse<List<User>> findByParams(UserParamsVo params) {
        User user = new User();
        user.setUsername(params.getUsername());
        user.setSchool(params.getSchool());
        user.setLoginName(params.getLoginName());
        List<User> userList = userDao.selectByParams(user);
        return ServerResponse.createBySuccess(userList);
    }

    @Override
    public ServerResponse<String> updatePassword(UserVo userVo) {
        String checkCode = (String) redisTemplate.boundValueOps("forget_email").get();
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
