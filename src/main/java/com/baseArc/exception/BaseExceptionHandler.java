package com.baseArc.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Package: [com.baseArc.exception]
 * @Description: [统一异常处理]
 * @Author: [chenye]
 * @CreateDate: [2017/6/22 17:43]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/6/22 17:43，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public class BaseExceptionHandler implements HandlerExceptionResolver {
    private final static Logger logger = LoggerFactory.getLogger(BaseExceptionHandler.class);
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        ModelAndView mv = new ModelAndView();
        logger.error("异常信息",e);
        if (this.isAjaxRequest(httpServletRequest)) {
            mv.setView(new MappingJackson2JsonView());//利用jackson返回json信息
        } else {
            mv.addObject("error", e);
            mv.setViewName("/error");
        }
        return mv;
    }

    /**
     * 判断当前请求是否一个异步 请求
     *
     * @param request 异步 请求
     * @return 如果是异步请求 则返回true
     */
    public static boolean isAjaxRequest(HttpServletRequest request) {
        //ajax判断,仅一个标准header中含有X-Requested-With
        String requestProxy = request.getHeader("X-Requested-With");
        return org.springframework.util.StringUtils.hasText(requestProxy) && "XMLHttpRequest".equals(requestProxy);
    }

}
