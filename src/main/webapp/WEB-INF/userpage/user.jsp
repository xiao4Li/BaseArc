<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row-fluid">
    <div class="span12">
        <div class="portlet box light-grey">
            <div class="portlet-title">
                <div class="caption"><i class="icon-globe"></i>用户信息</div>
                <div class="actions">
                    <a  class="btn green" href="#sys_user_info" data-toggle="modal">
                        <i class="icon-plus"></i>
                        Add
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover" id="sample_1">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th class="hidden-480">邮件地址</th>
                        <th class="hidden-480">邮件地址</th>
                        <th class="hidden-480">账号</th>
                        <th class="hidden-480">账号</th>
                        <th class="hidden-480">账号</th>
                        <th class="hidden-480">账号</th>
                        <th class="hidden-480">电话号码</th>
                        <th > 操作 </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}" >
                        <tr class="odd gradeX">
                            <td>${user.name}</td>
                            <td class="hidden-480"><a href="mailto:${user.email}">${user.email}</a></td>
                            <td class="hidden-480"><a href="mailto:${user.email}">${user.email}</a></td>
                            <td class="hidden-480">${user.account}</td>
                            <td class="hidden-480">${user.account}</td>
                            <td class="hidden-480">${user.account}</td>
                            <td class="hidden-480">${user.account}</td>
                            <td class="center hidden-480">${user.tel}</td>
                            <td>
                                <span class="btn green">
                                     <i class="icon-edit"></i> 编辑
                                </span>

                                <span class="btn red">
                                     <i class="icon-remove"></i> 删除
                                </span>

                                <span class="btn blue">
                                     <i class="icon-lock"></i> 锁定
                                </span>

                                <span class="btn black">
                                     <i class="icon-wrench"></i> 授权
                                </span>

                                <span class="btn yellow">
                                     <i class="icon-warning-sign"></i> 修改密码
                                </span>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>

            </div>

        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>

<!--引入user info-->
<jsp:include page="userform.jsp"/>