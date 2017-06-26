<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>钰信诺家金融管理系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${basePath}/media/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="stylesheet" href="${basePath}/media/dist/css/AdminLTE.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
        }
        .check_code_img{
            height: 34px;
            width: 39%;
            vertical-align: top;
        }

        .check_code_img:hover{
            cursor:pointer;
        }
        .error_info{
            text-align: center;
            margin-bottom: 20px;
            color:red;
        }

        .cust_login_box{
            background-color: white !important;
            border:1px solid lightgrey;
            border-radius:5px;
            padding:10px;
        }
    </style>

</head>
<body class="hold-transition login-page">
<div class="login-box cust_login_box">
    <div class="login-logo ">
        <a href="#"><b>钰信诺家</b>金融</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <form class="form-signin" action="doLogin" method="post" onsubmit="return validation();">

            <c:if test="${not empty ERROR_CODE}">
                <div class="error_info">
                <span>
                       <parsecode:pc key="${ERROR_CODE}"/>
                </span>
                </div>
            </c:if>

            <div class="form-group">
                <input type="text" name="account" class="form-control input-block-level" placeholder="用户名">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control input-block-level" placeholder="密码">
            </div>

            <div class="form-group">
            <span class="check_code_box">
                <input name="identifyingCode" type="text" class="form-control input-block-level" placeholder="验证码" style="width: 60%;display: inline;">
                <img title="点击更换" class="check_code_img" id="img_identifyingCode" src="captchaController/identifyingCode" onclick="refreshIdentifyingCode()" >
            </span>
            </div>
            <button id="login_submit" class="btn btn-block btn-primary" type="submit">登 录</button>
        </form>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script src="${basePath}/media/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${basePath}/media/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
    //刷新验证码图片
    function refreshIdentifyingCode(){
        $("#img_identifyingCode").attr('src',"captchaController/identifyingCode?" + new Date().getTime())
    }

    function validation() {
        var result = true;
        $('.input-block-level').each(function(){
            var value = $.trim($(this).val());
            if(value == ""){
                result = false;
                $(this).css("border-color","red");
            }else{
                $(this).css("border-color","#838383");
            }
        });

        return result;
    }

    $(function(){
        //输入框绑定事件
        $('.input-block-level').each(function(){
            var input = $(this);
            input.bind("blur",function(){
                var value = $.trim($(this).val());
                if(value == ""){
                    $(this).css("border-color","red");
                }else{
                    $(this).css("border-color","#838383");
                }
            });
        });

    });
</script>

<script>

</script>
</body>
</html>