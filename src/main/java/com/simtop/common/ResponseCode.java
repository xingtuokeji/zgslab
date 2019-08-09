package com.simtop.common;

/**
 * 封装的服务端响应状态/代码/状态信息
 */
public enum ResponseCode {
    SUCCESS(0,"SUCCESS"),
    ERROR(1,"ERROR"),
    NEED_LOGIN(2,"NEED_LOGIN"),
    ILLEGAL_ARGUMENT(1000,"ILLEGAL_ARGUMENT");

    private int code;
    private String msg;

    ResponseCode(int code,String msg){
        this.code = code;
        this.msg = msg;
    }

    public int getCode(){
        return code;
    }

    public String getMsg(){
        return msg;
    }

}
