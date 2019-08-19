package com.simtop.pojo;

/**
 * 网站访问量统计
 */
public class Count {
    private Integer id;
    private Integer count;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Count{" +
                "id=" + id +
                ", count=" + count +
                '}';
    }
}
