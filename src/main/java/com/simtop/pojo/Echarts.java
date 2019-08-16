package com.simtop.pojo;


import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 * 映射省份用户统计表
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_EMPTY)
public class Echarts {
    //省份
    private String province;
    //统计数量省份
    private Integer count;

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Echarts{" +
                "province='" + province + '\'' +
                ", count=" + count +
                '}';
    }
}
