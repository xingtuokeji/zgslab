package com.simtop.util;

import java.util.Random;

/**
 * 随机字符串
 */
public class StringUtil {
    /**
     * 随机生成16位字符串
     */
    public static String getRandomString(int length) { //length表示生成字符串的长度
        String base = "0123456789ABCDEF";
        Random random = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String str = getRandomString(16);
        System.out.println(str);// 7876C83C0F766F16
    }
}
