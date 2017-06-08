package com.baseArc.service;

import com.baseArc.po.MenuPo;
import com.baseArc.vo.MenuVo;

import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/8
 * @Description: [ xxxx ]
 * @Version: 1.0
 */
public interface MenuService {
    List<MenuPo> listMenu();
    List<MenuVo> constructMenu(List<MenuPo> list);
}
