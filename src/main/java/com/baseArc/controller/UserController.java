package com.baseArc.controller;

import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
import com.baseArc.support.PagingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("list")
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
//        List<UserPo> users = userService.listUser();
//        mv.addObject("users",users);
        mv.setViewName("user/list");
        return mv;
    }

    @RequestMapping("listUser")
    @ResponseBody
    public PagingResult listUser(){
        List<UserPo> users = userService.listUser();
        return new PagingResult(users);
    }

    @RequestMapping("userform")
    public ModelAndView userform(){
        ModelAndView mv = new ModelAndView();
//        List<UserPo> users = userService.listUser();
//        mv.addObject("users",users);
        mv.setViewName("user/userform");
        return mv;
    }



    @ResponseBody
    @RequestMapping("checkUserAccountNotExist")
    public String checkUserAccountNotExist(String id,String account){
        UserPo userPo = userService.findUserByAccount(account);
        if(userPo != null){
            if(!userPo.getId().equals(id)){
                return "false";
            }
        }
        return "true";
    }
    @ResponseBody
    @RequestMapping("/test")
    public String test(String id,String account){
        int a = 0,b = 1,c;
        c = b/a;
        return "";
    }
}
