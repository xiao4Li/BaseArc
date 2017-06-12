package com.baseArc.po;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/12
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public class ResourcePo {
    private String id; //编号
    private String name; //资源名称
    private Integer type; //资源类型
    private String url; //资源路径
    private String permission; //权限字符串
    private String icon;//资源icon

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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
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

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    private String parentId; //父编号
    private Integer status;

}
