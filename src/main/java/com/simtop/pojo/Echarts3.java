package com.simtop.pojo;

/**
 * 统计不同分数段的人数
 */
public class Echarts3 {
    //不同分数段人数
    private Integer c0;//[90,100]
    private Integer c1;//[80,90)
    private Integer c2;//[70,80)
    private Integer c3;//[60,70)
    private Integer c4;//[0,60)

    public Integer getC0() {
        return c0;
    }

    public void setC0(Integer c0) {
        this.c0 = c0;
    }

    public Integer getC1() {
        return c1;
    }

    public void setC1(Integer c1) {
        this.c1 = c1;
    }

    public Integer getC2() {
        return c2;
    }

    public void setC2(Integer c2) {
        this.c2 = c2;
    }

    public Integer getC3() {
        return c3;
    }

    public void setC3(Integer c3) {
        this.c3 = c3;
    }

    public Integer getC4() {
        return c4;
    }

    public void setC4(Integer c4) {
        this.c4 = c4;
    }

    @Override
    public String toString() {
        return "Echarts3{" +
                "c0=" + c0 +
                ", c1=" + c1 +
                ", c2=" + c2 +
                ", c3=" + c3 +
                ", c4=" + c4 +
                '}';
    }
}
