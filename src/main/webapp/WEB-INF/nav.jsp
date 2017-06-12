<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ page import="com.baseArc.support.SystemConstants" %>
<%@ page import="com.baseArc.vo.MenuVo" %>
<%@ page import="java.util.List" %>

<c:set var="basePath" value="${pageContext.request.contextPath}"/>
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
        <c:set value="${param.path}" var="path" scope="page"/>
        <!-- BEGIN SIDEBAR MENU -->
        <c:forEach var="menu" items="${menus}" varStatus="status">

            <c:set var="firstLastClass" value=""/>
            <c:if test="${status.first}">
                <c:set var="firstLastClass" value="start"/>
            </c:if>
            <c:if test="${status.last}">
                <c:set var="firstLastClass" value="last"/>
            </c:if>

            <c:set var="activeClass" value=""/>
            <c:if test="${menu.isActive(path)}">
                <c:set var="activeClass" value="active"/>
            </c:if>


            <c:choose>
                <c:when test="${not empty menu.subMenu}">
                    <c:if test="${menu.isActive(path)}">
                        <c:set var="selectedClass" value="arrow open"/>
                    </c:if>
                    <c:if test="${!menu.isActive(path)}">
                        <c:set var="selectedClass" value="arrow"/>
                    </c:if>
                    <c:set var="url" value="javascript:;"/>
                </c:when>
                <c:otherwise>
                    <c:if test="${menu.isActive(path)}">
                        <c:set var="selectedClass" value="selected"/>
                    </c:if>
                    <c:if test="${!menu.isActive(path)}">
                        <c:set var="selectedClass" value=""/>
                    </c:if>
                    <c:set var="url" value="${basePath}/${menu.path}"/>
                </c:otherwise>
            </c:choose>

            <li class="<c:out value="${firstLastClass}"/> <c:out value="${activeClass}"/> ">
                <a href="<c:out value="${url}"/>">
                    <i class="icon-home"></i>
                    <span class="title">
                            <c:out value="${menu.name}"/>
                        </span>
                    <span class="<c:out value="selected"/>"></span>
                    <span class="<c:out value="${selectedClass}"/>"></span>
                </a>


                <c:if test="${not empty menu.subMenu}">
                    <ul class="sub-menu">
                        <c:forEach var="submenu" items="${menu.subMenu}">
                            <c:set var="submenuActive" value=""/>
                            <c:if test="${submenu.isActive(path)}">
                                <c:set var="submenuActive" value="active"/>
                            </c:if>

                            <li class="<c:out value="${submenuActive}"/>">
                                <a href="${basePath}/${submenu.path}">
                                    <c:out value="${submenu.name}"/></a>
                            </li>
                        </c:forEach>
                    </ul>
                </c:if>

            </li>
        </c:forEach>

    </ul>
</div>
