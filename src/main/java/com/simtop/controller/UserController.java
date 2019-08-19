package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;
import com.simtop.service.JwtLoginService;
import com.simtop.service.UserService;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * 用户模块
 */
@Controller
@RequestMapping("/user")
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
    public ServerResponse<String> register(UserVo userVo,HttpServletRequest request) throws UnsupportedEncodingException {
        /**
         * 接受前台时候出现乱码问题 进行硬编码 todo 2019年8月19日17:38:20 中文参数乱码问题 important
         */
        String school = new String(request.getParameter("school").getBytes("ISO-8859-1"),"utf-8");
        String province = new String(request.getParameter("province").getBytes("ISO-8859-1"),"utf-8");
        String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"utf-8");
        String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
        userVo.setSchool(school);
        userVo.setProvince(province);
        userVo.setCity(city);
        userVo.setUsername(username);
        return userService.register(userVo);
    }

    /**
     * 注册时 1、获取后台生成的验证码
     * 参数需要安全，接口安全 POST
     * @return
     */
    @RequestMapping(value = "/checkCode",method = RequestMethod.POST)
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
    public ServerResponse<String> login(UserVo userVo){
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
    @RequestMapping(value = "/forget_checkCode",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> forgetSendEmailCode(String email){
        //根据邮箱获取验证码
        return userService.forgetSendEmailCode(email);
    }

    /**
     * 忘记密码时根据邮箱地址获取验证码 更新
     */
    @RequestMapping(value = "/updatePassword",method = RequestMethod.PUT)
    @ResponseBody
    public ServerResponse<String> updatePassword(UserVo userVo){
        return userService.updatePassword(userVo);
    }

    /**
     * 用户管理 查看所有的数据
     */
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<User>> findAll(Integer userId, HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return userService.findAll();
    }
    /**
     * 新增后台用户管理记录
     */
    @RequestMapping(value = "/backend/add",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> addUser(UserVo userVo,Integer userId, HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return userService.insertBackUser(userVo);
    }

    /**
     * 根据用户id删除User表数据
     */

    @RequestMapping(value = "/deleteByUserId",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> deleteById(Integer userId, HttpServletRequest request,Integer id){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return userService.deleteByUserId(id);
    }

    @RequestMapping(value = "/backend/update",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> updateBackendUser(UserVo userVo,Integer userId, HttpServletRequest request){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return userService.updateBackendUser(userVo);
    }

    /**
     * 用户查询功能(学校、姓名、登录名查询)
     */
    @RequestMapping(value = "/backend/findByParams",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<List<User>> findByParams(HttpServletRequest request, UserParamsVo params){
        //判断token是否失效
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
       return userService.findByParams(params);
    }
    /**
     * 统计功能：统计用户总数量
     */
    @RequestMapping(value = "/userAccount",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<Integer> userAccount(HttpServletRequest request){
        String token = request.getHeader("Authorization");
        if(token == null){
            return ServerResponse.createByErrorMsg("token已过期");
        }
        return userService.accountUser();
    }
}
