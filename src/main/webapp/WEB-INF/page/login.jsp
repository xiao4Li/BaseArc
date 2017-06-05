<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Sign in &middot; Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="static/bootstrap/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            background-color: rgb(131, 131, 131);
            max-width: 360px;
            padding: 40px 110px 80px;
            margin: 120px auto 0;
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
            width: 40%;
            display: inline;

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
    <link href="static/bootstrap/bootstrap-responsive.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="static/bootstrap/hack/html5shiv.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
    <form class="form-signin" action="doLogin" method="post" onsubmit="return validation();">
        <div class="sys_title">
            <span>
                <img src="static/imgs/sys_title.png" width="270" height="55">
            </span>
        </div>
        <c:if test="${not empty ERROR_CODE}">
            <div class="error_info">
                <span>
                        ${ERROR_CODE}
                </span>
            </div>
        </c:if>

        <input type="text" name="username" class="input-block-level" placeholder="用户名">
        <input type="password" name="password" class="input-block-level" placeholder="密码">
        <div>
            <span class="check_code_box">
                <input name="identifyingCode" type="text" class="input-block-level" placeholder="验证码">
            </span>
            <span class="check_code_img">
                <img title="点击更换" id="img_identifyingCode" src="captchaController/identifyingCode" onclick="refreshIdentifyingCode()">
            </span>
        </div>
        <button id="login_submit" class="btn btn-warning btn-large btn-block" type="submit">登 录</button>
    </form>
</div> <!-- /container -->
<script src="static/js/jquery.js"></script>
<script src="static/bootstrap/bootstrap-transition.js"></script>
<script src="static/bootstrap/bootstrap-alert.js"></script>
<script src="static/bootstrap/bootstrap-modal.js"></script>
<script src="static/bootstrap/bootstrap-dropdown.js"></script>
<script src="static/bootstrap/bootstrap-scrollspy.js"></script>
<script src="static/bootstrap/bootstrap-tab.js"></script>
<script src="static/bootstrap/bootstrap-tooltip.js"></script>
<script src="static/bootstrap/bootstrap-popover.js"></script>
<script src="static/bootstrap/bootstrap-button.js"></script>
<script src="static/bootstrap/bootstrap-collapse.js"></script>
<script src="static/bootstrap/bootstrap-carousel.js"></script>
<script src="static/bootstrap/bootstrap-typeahead.js"></script>

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