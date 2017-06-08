<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>钰信诺家</title>

    <!-- Le styles -->
    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

    <link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

    <link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

    <link rel="shortcut icon" href="media/image/favicon.ico" />

    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: white !important;
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
<div class="container">
    <form class="form-signin" action="doLogin" method="post" onsubmit="return validation();">
        <div class="sys_title">
            <span>
                <img src="media/image/sys_title.png" width="270" height="55">
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
</div> <!-- /container -->


<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="media/js/excanvas.min.js"></script>

<script src="media/js/respond.min.js"></script>

<![endif]-->

<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script src="media/js/jquery.vmap.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

<script src="media/js/jquery.flot.js" type="text/javascript"></script>

<script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>

<script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>

<script src="media/js/date.js" type="text/javascript"></script>

<script src="media/js/daterangepicker.js" type="text/javascript"></script>

<script src="media/js/jquery.gritter.js" type="text/javascript"></script>

<script src="media/js/fullcalendar.min.js" type="text/javascript"></script>

<script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

<script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="media/js/app.js" type="text/javascript"></script>

<script src="media/js/index.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->


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