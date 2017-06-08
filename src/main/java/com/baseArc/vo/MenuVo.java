package com.baseArc.vo;

import com.baseArc.po.MenuPo;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/8
 * @Description: [  ]
 * @Version: 1.0
 */
public class MenuVo extends MenuPo {
    public MenuVo(){}
    public MenuVo(MenuPo menuPo){
        this.setId(menuPo.getId());
        this.setName(menuPo.getName());
        this.setOrder(menuPo.getOrder());
        this.setParentId(menuPo.getParentId());
        this.setUri(menuPo.getUri());
        this.setType(menuPo.getType());
        this.setSubMenu(new ArrayList<MenuPo>());
    }
    private List<MenuPo> subMenu;
    public List<MenuPo> getSubMenu() {
        return subMenu;
    }

    public void setSubMenu(List<MenuPo> subMenu) {
        this.subMenu = subMenu;
    }
}
