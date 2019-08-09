package com.simtop.controller;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.Role;
import com.simtop.pojo.User;
import com.simtop.service.JwtLoginService;
import com.simtop.service.UserService;
import com.simtop.util.JwtUtil;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    @RequestMapping(value = "/register.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> register(UserVo userVo){
        return userService.register(userVo);
    }

    /**
     * 注册时获取后台生成的验证码
     * @return
     */
    @RequestMapping(value = "/checkCode.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> sendEmailCode(String email){
        //根据邮箱获取验证码
        return userService.checkCode(email);
    }
    /**
     * 用户登录 成功后给前台返回一个token,后面需要拿这个token去验证
     * @param userVo
     * @return
     */
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> login(UserVo userVo){
        User user = new User();
        Role role = new Role();
        role.setId(userVo.getRoleId());
        user.setRoleId(role);
        user.setLoginName(userVo.getLoginName());
        user.setPassword(userVo.getPassword());
        String token = jwtLoginService.login(user);
        if(token==null||"".equals(token)){
            return ServerResponse.createByError();
        }
        System.out.println("登陆成功后生成的token为："+token);
        return ServerResponse.createBySuccess(token);
    }

    /**
     * 忘记密码时获取验证码邮箱验证码
     *
     */
    @RequestMapping(value = "/forget_checkCode.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<String> forgetSendEmailCode(String email){
        //根据邮箱获取验证码
        return userService.forgetSendEmailCode(email);
    }

    /**
     * 忘记密码时根据邮箱地址获取验证码
     */
    @RequestMapping(value = "/update.do",method = RequestMethod.POST)
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        System.out.println(jwt);
        User user = JwtUtil.unsign(jwt, User.class);
        System.out.println(user);
        if(!userId.equals(user.getId())){
            return ServerResponse.createByErrorMsg("token错误");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        System.out.println(jwt);
        User user = JwtUtil.unsign(jwt, User.class);
        System.out.println(user);
        if(!userId.equals(user.getId())){
            return ServerResponse.createByErrorMsg("token错误");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        System.out.println(jwt);
        User user = JwtUtil.unsign(jwt, User.class);
        System.out.println(user);
        if(!userId.equals(user.getId())){
            return ServerResponse.createByErrorMsg("token错误");
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
        String jwt = token.substring(token.lastIndexOf(" ")+1);
        System.out.println(jwt);
        User user = JwtUtil.unsign(jwt, User.class);
        System.out.println(user);
        if(!userId.equals(user.getId())){
            return ServerResponse.createByErrorMsg("token错误");
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
}
