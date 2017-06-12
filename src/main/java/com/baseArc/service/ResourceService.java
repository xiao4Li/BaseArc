package com.baseArc.service;

import com.baseArc.po.ResourcePo;
import com.baseArc.vo.ResourceVo;
import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/8
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public interface ResourceService {
    List<ResourcePo> listResource();
    List<ResourceVo> constructResource(List<ResourcePo> list);
}
