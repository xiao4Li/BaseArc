package com.baseArc.filter;

import com.baseArc.filter.wrapper.XssServletRequestWrapper;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @Package: [com.baseArc.filter]
 * @Description: [防跨域]
 * @Author: [chenye]
 * @CreateDate: [2017/6/22 19:36]
 * @UpdateUser: [chenye(如多次修改保留历史记录，增加修改记录)]
 * @UpdateDate: [2017/6/22 19:36，(如多次修改保留历史记录，增加修改记录)]
 * @UpdateRemark: [说明本次修改内容, (如多次修改保留历史记录，增加修改记录)]
 * @Version: [v1.0]
 */
public class XssDefenseFilter implements Filter{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        chain.doFilter(new XssServletRequestWrapper(httpServletRequest), response);
    }

    @Override
    public void destroy() {

    }
}
