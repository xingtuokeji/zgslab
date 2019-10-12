package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;

import java.util.List;

public interface UserService {

    ServerResponse<String> register(UserVo userVo);

    ServerResponse<String> generateCheckCode(String email);

    ServerResponse<String> updatePassword(UserVo userVo);

    ServerResponse<String> forgetSendEmailCode(String email);

    List<User> findAll();

    ServerResponse<String> insertBackUser(UserVo userVo);

    ServerResponse<String> deleteByUserId(Integer id);

    ServerResponse<String> updateBackendUser(UserVo userVo);

    List<User> findByParams(UserParamsVo params);

    ServerResponse<Integer> accountUser();

    ServerResponse<User> findById(Integer id);

    User selectUserByLoginName(String loginName);

    int insertIlabUser(UserVo userVo);
}
