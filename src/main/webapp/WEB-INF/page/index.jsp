<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Test</title>
</head>
<body>
    <c:forEach items="${users}" var="item" varStatus="s">
        名称:${item.username}
    </c:forEach>
</body>
</html>