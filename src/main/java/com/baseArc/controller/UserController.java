package com.baseArc.controller;

import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * @Description: []
 * @Author: [qi.li@funi365.com]
 * @CreateDate: 2017-06-07 21:12
 * @UpdateUser: [] 
 * @UpdateDate: []
 * @UpdateRemark: []
 * @Version:    [v1.0] 
 **/
@Controller
@RequestMapping("usermanage")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("user")
    public ModelAndView listEmployee(){
        ModelAndView mv = new ModelAndView();
        List<UserPo> users = userService.listUser();
        mv.addObject("users",users);
        mv.setViewName("userpage/usermanage");
        return mv;
    }
}
