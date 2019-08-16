package com.simtop.service;

import com.simtop.common.ServerResponse;
import com.simtop.pojo.User;

public interface JwtLoginService {

    ServerResponse<String> login(User user);
}
