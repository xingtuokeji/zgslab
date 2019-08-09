package com.simtop.pojo;

import java.util.Date;

public class Role {
    private Integer id;//主键 角色id
    private String roleName;//角色名称
    private Integer roleType;//角色类别
    private Date createTime;//创建时间
    private Date updateTime;//最后一次更新时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getRoleType() {
        return roleType;
    }

    public void setRoleType(Integer roleType) {
        this.roleType = roleType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                ", roleType=" + roleType +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
