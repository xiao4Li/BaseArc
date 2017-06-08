<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page import="com.baseArc.support.SystemConstants" %>
<%@ page import="com.baseArc.vo.MenuVo" %>
<%@ page import="java.util.List" %>

<div class="page-sidebar nav-collapse collapse">
    <ul id="page_nav" class="page-sidebar-menu" style="overflow-x:hidden; overflow-y: auto;">
        <!--隐藏显示 按钮-->
        <li>
            <div class="sidebar-toggler hidden-phone"></div>
        </li>
        <%
            List<MenuVo> list = (List<MenuVo>) SecurityUtils.getSubject().getSession().getAttribute(SystemConstants.SYS_MENU);
            pageContext.setAttribute("menus", list);
        %>
        <!-- BEGIN SIDEBAR MENU -->
        <c:forEach var="menu" items="${menus}" varStatus="status">
            <c:choose>
                <c:when test="${status.first}">
                    <li class="start active">
                        <a href="<c:out value="${menu.uri}"/>">
                            <i class="icon-home"></i>
                            <span class="title">
                            <c:out value="${menu.name}"/>
                        </span>
                            <span class="selected"></span>
                        </a>
                    </li>
                </c:when>
                <c:when test="${status.last}">
                    <li class="last">
                        <c:choose>
                            <c:when test="${not empty menu.subMenu}">
                                <a href="javascript:;">
                                    <i class="icon-bar-chart"></i>
                                    <span class="title">
                                    <c:out value="${menu.name}"/>
                                </span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">
                                    <c:forEach items="${menu.subMenu}" var="submenu">
                                        <li >
                                            <a href="<c:out value="${submenu.uri}"/>">
                                                <c:out value="${submenu.name}"/>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <a href="<c:out value="${menu.uri}"/>">
                                    <i class="icon-bar-chart"></i>
                                    <span class="title">
                                    <c:out value="${menu.name}"/>
                                </span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="">
                        <a href="<c:out value="${menu.uri}"/>">
                            <i class="icon-bar-chart"></i>
                            <span class="title">
                            <c:out value="${menu.name}"/>
                        </span>
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>

            <c:if test="${not empty menu.subMenu}">

            </c:if>
        </c:forEach>
    </ul>
</div>
