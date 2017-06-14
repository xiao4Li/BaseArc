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

        input.error { border: 1px solid red; }
        label.error {
            color: #EA5200;
            font-size:10px;
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
            ignore:"",
            onkeyup:null,
            onfocusout: function( element ) {
                $(element).valid();
            },
            errorPlacement: function(error, element) {
                console.log(error);
                element.parent('div').next('div').html(error);
            },
            rules:{
                username:{
                    required: true,
                    minlength: 2,
                    maxlength:50
                },
                email:{
                    email:true
                },
                tel:{
                    checkTelNum:true
                },
                no:{
                    required: true
                },
                account:{
                    required: true,
                    minlength:5,
                    maxlength:20,
                    remote:{
                        type:"POST",
                        url:"<c:out value="${basePath}"/>/usermanage/checkUserAccountNotExist",
                        data:{
                            id:null,
                            account:function(){ return $('#account').val(); }
                        }
                    }
                },
                password:{
                    required: true,
                    minlength: 6,
                    maxlength:20
                },
                repassword:{
                    required: true,
                    equalTo:"#password"
                }
            },
            messages: {
                email:{
                    email:"邮件地址不正确"
                },
                username: {
                    required:"姓名不能为空",
                    minlength:$.validator.format("姓名的最小长度为{0}"),
                    maxlength:$.validator.format("姓名最大长度为{0}")
                },
                no:{
                    required:"员工编号不能为空"
                },
                account:{
                    required: "系统账号不能为空",
                    remote:"该系统账号已经存在",
                    minlength:$.validator.format("系统账号最小长度为{0}"),
                    maxlength:$.validator.format("系统账号最大长度为{0}")
                },
                password:{
                    required:"密码不能为空",
                    minlength:$.validator.format("密码最小长度为{0}"),
                    maxlength:$.validator.format("密码最大长度为{0}")
                },
                repassword:{
                    required: "确认密码不能为空",
                    equalTo:"密码不匹配"
                }
            }
        });
        //自定义正则表达示验证手机
        $.validator.addMethod("checkTelNum",function(value,element,params){
            var checkTelNum = /^1[0-9]{10}$/;
            return this.optional(element)||(checkTelNum.test(value));
        },"手机号码格式不正确");
    });
</script>
</body>
</html>