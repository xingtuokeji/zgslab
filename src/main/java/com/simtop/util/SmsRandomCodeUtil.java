package com.simtop.util;


import java.util.Random;

public class SmsRandomCodeUtil {
    /**
     * 给邮箱生成随机的六位数字
     * @return
     */
    public static String generateRandomSixNum(){
        /**
         * [0,899999]+100000 <-- [100000,999999)
         */
        Random r = new Random();
        return String.valueOf(r.nextInt(899999)+100000);
    }
}
