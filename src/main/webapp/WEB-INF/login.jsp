<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>钰信诺家</title>

    <!-- Le styles -->
    <link rel="stylesheet" href="${basePath}/media/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${basePath}/media/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: white !important;
        }

        .form-signin {
            background-color: rgb(131, 131, 131);
            max-width: 360px;
            padding: 40px;
            margin: 40px;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .form-signin {
            margin-bottom: 10px;
        }
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

        .sys_title{
            text-align:center;
            margin:0 auto;
            padding-bottom: 30px;
        }

        .check_code_box{
            width: 60%;
            display: inline;
        }
        .check_code_box input{
            width: 60%;
        }

        .check_code_img{
            clear: both;
            margin-right: 0px;
        }
        .check_code_img img{
            height: 36px;
            width: 35%;
            margin-bottom: 15px;
        }
        .check_code_img img:hover{
            cursor:pointer;
        }

        .error_info{
            text-align: center;
            margin-bottom: 20px;
            color:red;
        }
    </style>

</head>
<body>
<div class="row">
    <div class="col-md-6 col-md-offset-3" >
        <form class="form-signin" action="doLogin" method="post" onsubmit="return validation();">
            <div class="sys_title">
            <span>
                <img src="${basePath}/media/imgs/sys_title.png" width="270" height="55">
            </span>
            </div>
            <c:if test="${not empty ERROR_CODE}">
                <div class="error_info">
                <span>
                       <parsecode:pc key="${ERROR_CODE}"/>
                </span>
                </div>
            </c:if>

            <input type="text" name="account" class="input-block-level" placeholder="用户名">
            <input type="password" name="password" class="input-block-level" placeholder="密码">
            <div>
            <span class="check_code_box">
                <input name="identifyingCode" type="text" class="input-block-level" placeholder="验证码">
            </span>
                <span class="check_code_img">
                <img title="点击更换" id="img_identifyingCode" src="captchaController/identifyingCode" onclick="refreshIdentifyingCode()">
            </span>
            </div>
            <button id="login_submit" class="btn yellow btn-large btn-block" type="submit">登 录</button>
        </form>
    </div>

</div> <!-- /container -->

<script src="${basePath}/media/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${basePath}/media/bootstrap/js/bootstrap.min.js"></script>
<script src="${basePath}/media/dist/js/app.js"></script>

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

</body>
</html>