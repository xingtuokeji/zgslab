package com.simtop.util;


import java.util.Random;

public class ExperimentCodeUtil {

    /**
     * 生成8位唯一码 随机算法 相同 概率为4万亿分之一
     * @return
     */
    public static String generateExpCode(){
        String[] str = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M",
                "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
        Random r = new Random();
        String expCode = "";
        for(int i=0;i<8;i++){
            int index = r.nextInt(str.length);
            expCode += str[index];
        }
        return expCode;
    }

    public static void main(String[] args) {
        System.out.println(ExperimentCodeUtil.generateExpCode());
    }
}
