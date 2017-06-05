package com.baseArc.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/6/5
 * @Description: [ 验证码生成 ]
 * @Version: 1.0
 */
@Controller
@RequestMapping("captchaController")
public class CaptchaController {


    @Autowired
    private Producer producer;

    @RequestMapping(value = "identifyingCode", method = RequestMethod.GET)
    public void identityCode(HttpServletResponse rsp) throws Exception {
        org.apache.shiro.subject.Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();

        rsp.setDateHeader("Expires", 0);
        rsp.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        rsp.addHeader("Cache-Control", "post-check=0, pre-check=0");
        rsp.setHeader("Pragma", "no-cache");
        rsp.setContentType("image/jpeg");

        String capText = producer.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

        BufferedImage image = producer.createImage(capText);
        ServletOutputStream out = rsp.getOutputStream();
        ImageIO.write(image, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
    }
}
