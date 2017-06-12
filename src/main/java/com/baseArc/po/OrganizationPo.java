package com.baseArc.po;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/12
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public class OrganizationPo {
    private String id; //编号
    private String name; //组织机构名称
    private String parentId; //父编号
    private Integer status; //状态

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
