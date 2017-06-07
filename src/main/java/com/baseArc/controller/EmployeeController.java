package com.baseArc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
public class EmployeeController {
    @RequestMapping("listEmployee")
    public ModelAndView listEmployee(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("dashboardTemp");
        return mv;
    }
}
