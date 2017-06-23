package com.baseArc.controller;

import com.baseArc.po.ResourcePo;
import com.baseArc.service.ResourceService;
import com.baseArc.support.SystemConstants;
import com.baseArc.vo.ResourceVo;
import com.google.code.kaptcha.Constants;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/5
 * @Description: [ 登录相关 ]
 * @Version: 1.0
 */
@Controller
public class LoginController {
    @Autowired
    private ResourceService menuService;
    @RequestMapping(value="doLogin",method = RequestMethod.POST)
    public ModelAndView doLogin(String account, String password, String identifyingCode,HttpSession httpSession){
        ModelAndView mv = new ModelAndView();

        if(!StringUtils.hasText(account)){
            mv.addObject("ERROR_CODE","LOGIN_ER_01"); //用户名为空
            mv.setViewName("login");
            return mv;
        }

        if(!StringUtils.hasText(password)){
            mv.addObject("ERROR_CODE","LOGIN_ER_02"); //密码为空
            mv.setViewName("login");
            return mv;
        }

        if(!StringUtils.hasText(identifyingCode)){
            mv.addObject("ERROR_CODE","LOGIN_ER_03"); //验证码为空
            mv.setViewName("login");
            return mv;
        }

        Subject subject = SecurityUtils.getSubject();

        Session shiroSession = subject.getSession();
        String sessionIdentifyCode = (String) shiroSession.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        //检查验证码
        if(!identifyingCode.trim().equals(sessionIdentifyCode)){
            mv.addObject("ERROR_CODE","LOGIN_ER_04"); //验证码不匹配
            mv.setViewName("login");
            return mv;
        }

        AuthenticationToken token = new UsernamePasswordToken(account.trim(),password);
        try{
            subject.login(token);
            //设置菜单
            List<ResourcePo> list = menuService.listResource();
            List<ResourceVo> menus = menuService.constructResource(list);
            //session.setAttribute(SystemConstants.SYS_MENU,menus);
            httpSession.setAttribute("SYS_MENUS",menus);
        }catch (AuthenticationException ex){
            mv.addObject("ERROR_CODE","LOGIN_ER_05"); //用户名密码错误
            mv.setViewName("login");
            return mv;
        }
        //登录成功
        mv.setViewName("redirect:dashboard");

        return mv;
    }

    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("dashboard")
    public String dashboard(){
        return "dashboard";
    }

    @RequestMapping("logout")
    public String logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }
}
