<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Starter</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${basePath}/media/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="${basePath}/media/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="${basePath}/media/dist/css/skins/skin-blue.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .base-close-icon{
            color: #c2c2c2;
            -webkit-transition: all .2s;
            width:14px;
            height:14px;
            font-style: normal;
            margin-left:10px;
            cursor: pointer;
            border-radius:8px;
            text-align: center;
            line-height:14px;
        }
        .base-close-icon:hover{
            background-color: #DF7161;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <c:set value="${sessionScope.SYS_MENUS}" var="menus"/>
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${basePath}/media/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">Alexander Pierce</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="${basePath}/media/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${basePath}/media/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <%--动态生成菜单--%>
            <ul class="sidebar-menu">
                <c:forEach items="${menus}" var="menu" varStatus="status" >
                    <c:choose>
                        <c:when test="${ menu.type eq 0 }">
                            <li class="<c:if test="${status.first}"><c:out value="active"/></c:if>">
                                <a href="javascript:void(0)" menuId="<c:out value="${menu.id}"/>" menuName="<c:out value="${menu.name}"/>" url="<c:out value="${menu.url}"/>" >
                                    <i class="fa fa-link"></i> <span><c:out value="${menu.name}"/></span>
                                </a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li class="treeview">
                                <a href="javascript:void(0)"><i class="fa fa-link"></i> <span><c:out value="${menu.name}"/></span>
                                    <span class="pull-right-container">
                                      <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <c:forEach var="subMenu" items="${menu.subResource}">
                                        <li><a href="javascript:void(0)" menuId="<c:out value="${subMenu.id}"/>" menuName="<c:out value="${subMenu.name}"/>" url="<c:out value="${subMenu.url}"/>" ><i class="fa fa-circle-o"></i><c:out value="${subMenu.name}"/></a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ul>
        </section>
    </aside>
    <div class="content-wrapper" >
        <div class="row"  style="padding: 0;margin: 0">
            <div class="col-md-12" style="padding: 0;margin: 0">
                <div class="nav-tabs-custom " style="margin: 0;padding:0;" id="dashboard_tab" >
                    <ul class="nav nav-tabs">

                    </ul>
                    <div class="tab-content" style="padding:0;margin:0;">

                    </div>
                </div>
            </div>
        </div>

    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
    </footer>
</div>
<script src="${basePath}/media/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${basePath}/media/bootstrap/js/bootstrap.min.js"></script>
<script src="${basePath}/media/dist/js/app.js"></script>
<script>
    $(function(){
        //菜单绑定点击事件
        $(".sidebar-menu  li a").click(function(){
            var menuId = $(this).attr('menuId');
            var menuName = $(this).attr('menuName');
            var url = $(this).attr('url');
            if(menuId){
                debugger;
                var tabExist = false;
                var tabs = $('#dashboard_tab ul:first > li a');
                for(var i=0; i<tabs.length; i++){
                    var tab = tabs[i];
                    if($(tab).attr('menuId') == menuId){
                        $(tab).tab('show');
                        tabExist = true;
                        break;
                    }
                }
                if(!tabExist){
                    var tabContainerHeader = $('#dashboard_tab ul:first');
                    var tabContainerPanel = $('#dashboard_tab .tab-content:first');
                    tabContainerHeader.append('<li><a href="#' + menuId + '" data-toggle="tab" menuId="' + menuId + '" >' + menuName + '<i onclick="baseIconClose(this)" class="fa base-close-icon">&times;</i></a></li>');
                    tabContainerPanel.append('<div class="tab-pane base_tab_container" id="' + menuId + '" >' +
                        '<iframe src="' + url + '" width="100%" height="100%"  scrolling="auto" frameborder=0></iframe>' + '</div>');
                    $.AdminLTE.layout.fix();
                    //让新加入的tab active
                    $('#dashboard_tab ul:first > li a').each(function(){
                        if($(this).attr('menuId') == menuId){
                            $(this).tab('show');
                        }
                    });

                }
            }
        });
    });

    var baseIconClose = function (_this) {
            var me = _this;
            debugger;
            var divId = $(me).parent('a').attr('menuid');
            var isActive = $(me).parent('a').parent('li').hasClass('active');
            //如果是活动页签关闭，则让后面一个活动,如果后面没有，让前面一个活动
            if(isActive){
                var nextTab = $(me).parent().parent().next()[0];
                var preTab = $(me).parent().parent().prev()[0];
                if(nextTab){
                    $(nextTab).children().tab('show');
                }else if(preTab){
                    $(preTab).children().tab('show');
                }
            }

            $(me).parent().parent().remove();
            $('#' + divId).remove();
    }

</script>
</body>
</html>