package com.simtop.util;

import com.simtop.pojo.SmsPojo;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

/**
 * 不带附件的邮件发送（文本格式发送）
 */
public class SmsUtil {
    public static boolean sendTextMail(SmsPojo mailInfo) {
        // 判断是否需要身份认证
        MyAuthenticator authenticator = null;
        Properties pro = mailInfo.getProperties();
        if (mailInfo.isValidate()) {
            // 如果需要身份认证，则创建一个密码验证器
            authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
        }
        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session sendMailSession = Session.getDefaultInstance(pro,authenticator);
        try {
            // 根据session创建一个邮件消息
            Message mailMessage = new MimeMessage(sendMailSession);
            // 创建邮件发送者地址
            Address from = new InternetAddress(mailInfo.getFromAddress());
            // 设置邮件消息的发送者
            mailMessage.setFrom(from);
            // 创建邮件的接收者地址，并设置到邮件消息中
            Address to = new InternetAddress(mailInfo.getToAddress());
            mailMessage.setRecipient(Message.RecipientType.TO,to);
            // 设置邮件消息的主题
            mailMessage.setSubject(MimeUtility.encodeText(mailInfo.getSubject(),"utf-8","B"));
            // 设置邮件消息发送的时间
            mailMessage.setSentDate(new Date());
            // 设置邮件消息的主要内容
            String mailContent = mailInfo.getContent();
            mailMessage.setText(mailContent);
            // 发送邮件
            Transport.send(mailMessage);
            return true;
        } catch (MessagingException ex) {
            ex.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args){
        //这个类主要是设置邮件
        SmsPojo mailInfo = new SmsPojo();
        mailInfo.setMailServerHost("smtp.qq.com");
        mailInfo.setMailServerPort("25");
        mailInfo.setValidate(true);
        mailInfo.setUserName("714203849@qq.com");
        mailInfo.setPassword("caefvhxgffnebdcd");//您的邮箱密码 todo QQ邮箱授权码
        mailInfo.setFromAddress("714203849@qq.com");
        mailInfo.setToAddress("18806172172@163.com");
        mailInfo.setSubject("设置邮箱标题");
        mailInfo.setContent("邮箱验证码为："+"1EARDS");
        //这个类主要来发送邮件
        SmsUtil sms = new SmsUtil();
        sms.sendTextMail(mailInfo);//发送文体格式
    }

}

class MyAuthenticator extends Authenticator {
    String userName=null;
    String password=null;

    public MyAuthenticator(){
    }
    public MyAuthenticator(String username, String password) {
        this.userName = username;
        this.password = password;
    }
    protected PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(userName, password);
    }
}
