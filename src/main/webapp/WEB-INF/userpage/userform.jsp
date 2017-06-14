<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sys_user_info" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">

<div class="modal-header">

    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

    <h6 id="">用户信息</h6>

</div>

<div class="modal-body">

    <form id="user_form" action="user/add" class="form-horizontal">

        <div class="control-group">

            <label class="control-label">用户名</label>

            <div class="controls">

                <input name="username" type="text" placeholder="请输入用户名" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">员工编号</label>

            <div class="controls">

                <input type="text" placeholder="请输入员工编号" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">系统账号</label>

            <div class="controls">

                <input type="text" placeholder="请输入系统账号" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">初始密码</label>

            <div class="controls">

                <input type="text" placeholder="请输入密码" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">确认密码</label>

            <div class="controls">

                <input type="text" placeholder="请输入密码" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">邮件地址</label>

            <div class="controls">

                <input name="email" type="text" placeholder="请输入邮件地址" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">电话号码</label>

            <div class="controls">

                <input type="text" placeholder="请输入电话号码" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">所属部门</label>

            <div class="controls">

                <input type="text" placeholder="请输选择所属部门" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

        <div class="control-group">

            <label class="control-label">头像</label>

            <div class="controls">

                <input type="text" placeholder="请输入头像" class="m-wrap medium" />

                <span class="help-inline"></span>

            </div>
        </div>

    </form>

</div>

<div class="modal-footer">
    <button id="user_info_form_submit" class="btn green btn-primary" data-dismiss="modal">确定</button>
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
</div>
</div>