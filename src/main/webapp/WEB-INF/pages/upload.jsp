<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path ;
%>
操作信息： ${message}
<form action="<%=basePath%>/uploadWorkflowController/upload" method="post" enctype="multipart/form-data">
    First name: <input type="file" name="file" />
    Last name: <input type="text" name="fileName" />
    <input type="submit" value="Submit" />
</form>