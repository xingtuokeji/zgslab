package com.simtop.pojo;

/**
 * 解析ilab token
 */
public class IlabUser {
    private String token;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public String toString() {
        return "IlabUser{" +
                "token='" + token + '\'' +
                '}';
    }
}
