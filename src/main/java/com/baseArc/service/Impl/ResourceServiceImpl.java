package com.baseArc.service.Impl;

import com.baseArc.dao.ResourceDao;
import com.baseArc.po.ResourcePo;
import com.baseArc.service.ResourceService;
import com.baseArc.vo.ResourceVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/8
 * @Description: [  ]
 * @Version: 1.0
 */
@Service("resourceService")
public class ResourceServiceImpl implements ResourceService {
    @Autowired
    private ResourceDao resourceDao;
    @Override
    public List<ResourcePo> listResource() {
        return resourceDao.listResource();
    }

    @Override
    public List<ResourceVo> constructResource(List<ResourcePo> list) {
        //第一级菜单
        List<ResourceVo> levelOne = new ArrayList<>();
        for(ResourcePo resource : list){
            if(!StringUtils.hasText(resource.getParentId())){
                ResourceVo resourceVo = new ResourceVo(resource);
                resourceVo.setLevel(1);
                levelOne.add(resourceVo);
            }
        }
        //第二级菜单
        for(ResourceVo resourceVo : levelOne){
            String id = resourceVo.getId();
            for(ResourcePo resourcePo : list){
                if(id.equals(resourcePo.getParentId())){
                    ResourceVo subResourceVo = new ResourceVo(resourcePo);
                    subResourceVo.setLevel(2);
                    resourceVo.getSubResource().add(subResourceVo);
                }
            }
        }
        return levelOne;
    }
}
