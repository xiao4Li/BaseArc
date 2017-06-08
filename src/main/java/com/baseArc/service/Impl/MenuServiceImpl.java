package com.baseArc.service.Impl;

import com.baseArc.dao.MenuDao;
import com.baseArc.po.MenuPo;
import com.baseArc.service.MenuService;
import com.baseArc.vo.MenuVo;
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
@Service("menuService")
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuDao menuDao;
    @Override
    public List<MenuPo> listMenu() {
        return menuDao.listMenu();
    }

    @Override
    public List<MenuVo> constructMenu(List<MenuPo> list) {
        //第一级菜单
        List<MenuVo> levelOne = new ArrayList<>();
        for(MenuPo menu : list){
            if(!StringUtils.hasText(menu.getParentId())){
                MenuVo menuVo = new MenuVo(menu);
                menuVo.setLevel(1);
                levelOne.add(menuVo);
            }
        }
        //第二级菜单
        for(MenuVo menuVo : levelOne){
            String id = menuVo.getId();
            for(MenuPo menu : list){
                if(id.equals(menu.getParentId())){
                    MenuVo subMenuVo = new MenuVo(menu);
                    subMenuVo.setLevel(2);
                    menuVo.getSubMenu().add(subMenuVo);
                }
            }
        }
        return levelOne;
    }
}
