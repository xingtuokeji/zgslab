package com.simtop.dao;

import com.simtop.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    int checkLoginName(String loginName);

    int checkEmail(String email);

    int insert(User user);

    User checkLoginNameOrEmail(@Param("loginName") String loginName, @Param("email") String email);

    int updatePasswordByEmail(User user);

    List<User> selectAll();

    int insertBackUser(User user);

    int deleteByUserId(Integer id);

    int updateBackendUser(User user);

    List<User> selectByParams(User user);

    int selectUserCounts();
}
