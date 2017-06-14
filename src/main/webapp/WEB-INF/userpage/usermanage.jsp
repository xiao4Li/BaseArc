<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>

<c:set var="basePath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>

    <meta charset="utf-8" />

    <title>钰信诺家</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />
    <jsp:include page="../static_css.jsp"/>
    <style>
        .table th, .table td{
            line-height: 35px;
            padding:2px;
            margin:2px;
            text-align: center;
        }

        td .btn{
            padding:4px 8px;

        }
    </style>


</head>
<body class="page-header-fixed">
<jsp:include page="../header.jsp" flush="true"/>
<div class="page-container">
    <!--包含导航条-->
    <jsp:include page="../nav.jsp" flush="true">
        <jsp:param name="path" value="usermanage/user"/>
    </jsp:include>
    <div class="page-content">
        <div class="container-fluid">
            <!--包含标题 面包屑-->
            <jsp:include page="../title.jsp" flush="true"/>
            <jsp:include page="usergrid.jsp" flush="true"/>
        </div>
    </div>
</div>
<jsp:include page="../footer.jsp"/>

<jsp:include page="../static_js.jsp"/>

<script src="${basePath}/media/js/app.js"></script>

<script src="${basePath}/media/js/jquery.validate.js"></script>

<script type="text/javascript">
    $(function(){
        App.init();
        var content = $('.page-content');
        content.attr('style', 'min-height:' + ($(window).height() - 80) + 'px !important');

        $('#user_form').validate({
            onfocusout: function( element ) {
                $(element).valid();
            },
            rules:{
                username:{
                    required: true,
                    minlength: 4
                }
            },
            messages: {
                username: {
                    required: "用户名不能为空",
                    minlength: "用户名的最小长度为4"
                }
            }
        });

    });
</script>
</body>
</html>