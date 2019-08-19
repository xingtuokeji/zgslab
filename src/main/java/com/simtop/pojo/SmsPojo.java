package com.simtop.pojo;

import java.util.Properties;

/**
 * 邮件发送工具实体属性类
 */
public class SmsPojo {
    // 发送邮件的服务器的IP和端口
    private static String mailServerHost = "smtp.qq.com";
    private static String mailServerPort = "465";
    // 邮件发送者的地址
    private static String fromAddress = "714203849@qq.com";
    // 邮件接收者的地址
    private static String toAddress;//获取前台注册时候的邮箱地址
    // 登陆邮件发送服务器的用户名和密码 todo
    private static String userName = "714203849@qq.com";
    private static String password = "fjoqpepdxckebfce";
    // 是否需要身份验证
    private static boolean validate = true;
    // 邮件主题
    private static String subject;
    // 邮件的文本内容
    private static String content;

    public static Properties getProperties(){
        Properties p = new Properties();
        p.put("mail.smtp.host", mailServerHost);
        p.put("mail.smtp.port", mailServerPort);
        p.put("mail.smtp.auth", validate ? "true" : "false");
        //使用这一句可以解决465端口发送邮件报错问题
        p.put("mail.smtp.ssl.enable", true);
        return p;
    }
    public String getMailServerHost() {
        return mailServerHost;
    }
    public void setMailServerHost(String mailServerHost) {
        this.mailServerHost = mailServerHost;
    }
    public String getMailServerPort() {
        return mailServerPort;
    }
    public void setMailServerPort(String mailServerPort) {
        this.mailServerPort = mailServerPort;
    }
    public boolean isValidate() {
        return validate;
    }
    public void setValidate(boolean validate) {
        this.validate = validate;
    }
    public String getFromAddress() {
        return fromAddress;
    }
    public void setFromAddress(String fromAddress) {
        this.fromAddress = fromAddress;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getToAddress() {
        return toAddress;
    }
    public void setToAddress(String toAddress) {
        this.toAddress = toAddress;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String textContent) {
        this.content = textContent;
    }

}
