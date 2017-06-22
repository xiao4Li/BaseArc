package com.baseArc.exception;

import com.baseArc.exception.exception.BusinessException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

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
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("e", e.getMessage());
        e.printStackTrace();
        // 根据不同错误转向不同页面
        if (e instanceof BusinessException) {
            logger.error("业务异常",e);
            return new ModelAndView("errorPage/businessError", model);
        }else{
            logger.error("未定义异常",e);
        }
        return null;
    }
}
