package com.baseArc.vo;

import com.baseArc.po.MenuPo;
import com.baseArc.support.SystemConstants;
import com.sun.org.apache.xpath.internal.operations.Bool;

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
        this.setPath(menuPo.getPath());
        this.setType(menuPo.getType());
        this.setSubMenu(new ArrayList<MenuVo>());
    }

    private List<MenuVo> subMenu;

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    private Integer level;

    public List<MenuVo> getSubMenu() {
        return subMenu;
    }

    public void setSubMenu(List<MenuVo> subMenu) {
        this.subMenu = subMenu;
    }

    public boolean isActive(String path){
        //一级菜单只判断前半段path就可以确定一级菜单是否是活动的
        if(this.getLevel() == 1){
            String prePath = path.split(SystemConstants.SYS_MENU_PATH_SEPARATOR)[0];
            if(this.getPath().equals(prePath)){
                return true;
            }
        }else{
            //二级菜单需要判断全path才可以确定是不是被选择的菜单
            if(this.getPath().equals(path)){
                return true;
            }
        }
        return false;
    }
}
