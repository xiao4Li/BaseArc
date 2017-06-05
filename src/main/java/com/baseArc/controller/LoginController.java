package com.baseArc.controller;

import com.baseArc.po.UserPo;
import com.baseArc.service.UserService;
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
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/5
 * @Description: [ 登录相关 ]
 * @Version: 1.0
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping(value="login")
    public ModelAndView login(String username, String password, String identifyingCode){
        ModelAndView mv = new ModelAndView();
        if(StringUtils.hasText(username) && StringUtils.hasText(password) && StringUtils.hasText(identifyingCode)){
            Subject subject = SecurityUtils.getSubject();

            Session session = subject.getSession();
            String sessionIdentifyCode = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
            //检查验证码
            if(!identifyingCode.trim().equals(sessionIdentifyCode)){
                mv.addObject("ERROR_CODE","LOGIN_ER_02"); //验证码不匹配
                mv.setViewName("login");
                return mv;
            }
            AuthenticationToken token = new UsernamePasswordToken(username.trim(),password);
            try{
                subject.login(token);
            }catch (AuthenticationException ex){
                mv.addObject("ERROR_CODE","LOGIN_ER_02"); //用户名密码错误
                mv.setViewName("login");
                return mv;
            }
            //登录成功
            mv.setViewName("dashboard");
        }else{
            mv.addObject("ERROR_CODE","LOGIN_ER_01"); //用户名密码或者验证码为空
            mv.setViewName("login");
        }

        return mv;
    }
}
