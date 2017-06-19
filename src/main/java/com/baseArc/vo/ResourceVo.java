package com.baseArc.vo;

import com.baseArc.po.ResourcePo;
import com.baseArc.support.SystemConstants;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/8
 * @Description: [  ]
 * @Version: 1.0
 */
public class ResourceVo extends ResourcePo {
    public ResourceVo(){}
    public ResourceVo(ResourcePo resourcePo){
        this.setId(resourcePo.getId());
        this.setName(resourcePo.getName());
        this.setParentId(resourcePo.getParentId());
        this.setUrl(resourcePo.getUrl());
        this.setType(resourcePo.getType());
        this.setPermission(resourcePo.getPermission());
        this.setIcon(resourcePo.getIcon());
        this.setStatus(resourcePo.getStatus());
        this.setSubResource(new ArrayList<ResourceVo>());
    }

    private List<ResourceVo> subResource;

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    private Integer level;

    public List<ResourceVo> getSubResource() {
        return subResource;
    }

    public void setSubResource(List<ResourceVo> subResource) {
        this.subResource = subResource;
    }
}
