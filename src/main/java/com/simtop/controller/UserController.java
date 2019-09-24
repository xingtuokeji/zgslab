package com.simtop.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;
import com.simtop.service.JwtLoginService;
import com.simtop.service.UserService;
import com.simtop.util.HttpUtil;
import com.simtop.util.JwtUtil;
import com.simtop.util.SHA256Util;
import com.simtop.util.StringUtil;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * 用户模块
 */
@Controller
@RequestMapping("/user")
@CrossOrigin //todo 跨域问题
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private JwtLoginService jwtLoginService;

    /**
     * 前台用户注册接口
     * @param userVo
     * @return
     */
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> register(@RequestBody UserVo userVo,HttpServletRequest request) throws UnsupportedEncodingException {
        /**
         * 接受前台时候出现乱码问题 进行硬编码 todo 2019年8月19日17:38:20 中文参数乱码问题 important
         */
        System.out.println("接收到的前台参数为："+userVo);
//        String school = new String(request.getParameter("school").getBytes("ISO-8859-1"),"utf-8");
//        String province = new String(request.getParameter("province").getBytes("ISO-8859-1"),"utf-8");
//        String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
//        String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
//        userVo.setSchool(school);
//        userVo.setProvince(province);
//        userVo.setCity(city);
//        userVo.setUsername(username);
        return userService.register(userVo);
    }

    /**
     * 注册时 1、获取后台生成的验证码
     * 参数需要安全，接口安全
     * @return
     */
    @RequestMapping(value = "/checkCode",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> sendEmailCode(String email){
        //根据邮箱获取验证码
        return userService.generateCheckCode(email);
    }
    /**
     * 用户登录 成功后给前台返回一个token,后面需要拿这个token去验证
     *
     * 前台传入
     * @param userVo
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> login(@RequestBody UserVo userVo){
        //验证登陆接口 todo 满足ilab用户验证要求 loginName password nonce cnonce 已解决 2019年9月23日13:11:39
        String nonce = StringUtil.getRandomString(16);
        String cnonce = StringUtil.getRandomString(16);
        String newPassword = SHA256Util.generateShaPwd(nonce,userVo.getPassword(),cnonce);

        /**
         * 测试平台url
         */
        String json = HttpUtil.loadJSON("http://202.205.145.156:8017/sys/api/user/validate?username="+userVo.getLoginName()+"&password="+newPassword+"&nonce="+nonce+"&cnonce="+cnonce);

        /**
         * 正式平台的url ！！！
         */
        // String json = HttpUtil.loadJSON("http://www.ilab-x.com/sys/api/user/validate?username="+userVo.getLoginName()+"&password="+newPassword+"&nonce="+nonce+"&cnonce="+cnonce);
        JSONObject object = JSONObject.parseObject(json);
        int code = object.getInteger("code");
        // code==0 代表验证成功
        if(code != 0){
            //验证不成功 返回错误信息
            return ServerResponse.createByErrorMsg("请使用ilab平台注册账户！");
        }
        User user = new User();
        //角色id
        user.setRoleId(userVo.getRoleId());
        //登录名
        user.setLoginName(userVo.getLoginName());
        //登陆密码
        user.setPassword(userVo.getPassword());
        return jwtLoginService.login(user);
    }

    /**
     * 忘记密码时获取验证码 邮箱验证码
     *
     */
    @RequestMapping(value = "/forget_checkCode",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> forgetSendEmailCode( String email){
        //根据邮箱获取验证码
        return userService.forgetSendEmailCode(email);
    }

    /**
     * 忘记密码时根据邮箱地址获取验证码 更新
     */
    @RequestMapping(value = "/updatePassword",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updatePassword(@RequestBody UserVo userVo){
        return userService.updatePassword(userVo);
    }

    /**
     * 用户管理 查看所有的数据
     */
    @RequestMapping(value = "/backend/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<User>> findAll(Integer userId, HttpServletRequest request, Integer pageNum, Integer pageSize){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        if(ObjectUtils.isEmpty(pageNum)){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,pageSize);
        List<User> userList = userService.findAll();
        PageInfo<User> pageInfo = new PageInfo<User>(userList);
        return ServerResponse.createBySuccess(pageInfo);
    }
    /**
     * 新增后台用户管理记录
     */
    @RequestMapping(value = "/backend/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addUser(@RequestBody UserVo userVo,Integer userId, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return userService.insertBackUser(userVo);
    }

    /**
     * 根据用户id删除User表数据
     */

    @RequestMapping(value = "/deleteByUserId",method = RequestMethod.DELETE)
    @ResponseBody
    public ServerResponse<String> deleteById(Integer userId, HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return userService.deleteByUserId(id);
    }

    /**
     * 修改用户信息
     * @param userVo
     * @param userId
     * @param request
     * @return
     */
    @RequestMapping(value = "/backend/update",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updateBackendUser(@RequestBody UserVo userVo,Integer userId, HttpServletRequest request){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return userService.updateBackendUser(userVo);
    }

    /**
     * 根据用户id查询用户信息
     */

    @RequestMapping(value = "/backend/findById",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<User> findUserById(HttpServletRequest request,Integer id){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return userService.findById(id);
    }

    /**
     * 用户查询功能(学校、姓名、登录名查询)
     */
    @RequestMapping(value = "/backend/findByParams",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo<User>> findByParams(HttpServletRequest request, UserParamsVo params,Integer pageNum,Integer pageSize){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        PageHelper.startPage(pageNum,pageSize);
        List<User> userList = userService.findByParams(params);
        PageInfo<User> pageInfo = new PageInfo<User>(userList);
        return ServerResponse.createBySuccess(pageInfo);
    }
    /**
     * 统计功能：统计用户总数量
     */
    // @RequestMapping(value = "/userAccount",method = RequestMethod.GET)
    @GetMapping("/userAccount")
    @ResponseBody
    public ServerResponse<Integer> userAccount(HttpServletRequest request, HttpServletResponse response){
        String token = request.getHeader("Authorization");
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        User u = JwtUtil.unsign(jwt,User.class);
        if(u == null){
            return ServerResponse.createByErrorMsg("token无效");
        }
        return userService.accountUser();
    }
}
