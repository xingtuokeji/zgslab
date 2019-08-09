package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;
import com.simtop.vo.UserParamsVo;
import com.simtop.vo.UserVo;

import java.util.List;

public interface UserService {

    ServerResponse<String> register(UserVo userVo);

    ServerResponse<String> checkCode(String email);

    ServerResponse<String> updatePassword(UserVo userVo);

    ServerResponse<String> forgetSendEmailCode(String email);

    ServerResponse<List<User>> findAll();

    ServerResponse<String> insertBackUser(UserVo userVo);

    ServerResponse<String> deleteByUserId(Integer id);

    ServerResponse<String> updateBackendUser(UserVo userVo);

    ServerResponse<List<User>> findByParams(UserParamsVo params);
}
