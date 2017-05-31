package com.baseArc.shiro.session;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.SessionContext;
import org.apache.shiro.session.mgt.SessionFactory;
import org.apache.shiro.session.mgt.SimpleSession;
import org.apache.shiro.web.session.mgt.WebSessionContext;

/**
 * @Author: liqi@youbangsoft.com
 * @Date: 2017/5/31
 * @Description: [ Session的创建，全部从MangoDB中查询出来 ]
 * @Version: 1.0
 */
public class MangoSessionFactory implements SessionFactory {
    @Override
    public Session createSession(SessionContext initData) {
        SimpleSession session = new SimpleSession();
//        if (initData != null && initData instanceof WebSessionContext) {
//            WebSessionContext sessionContext = (WebSessionContext) initData;
//            HttpServletRequest request = (HttpServletRequest) sessionContext.getServletRequest();
//            if (request != null) {
//                session.setHost(IpUtils.getIpAddr(request));
//                session.setUserAgent(request.getHeader("User-Agent"));
//                session.setSystemHost(request.getLocalAddr() + ":" + request.getLocalPort());
//            }
//        }
        session.setHost(initData.getHost());
        return session;
    }
}
