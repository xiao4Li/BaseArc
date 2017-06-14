<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sys_user_info" class="modal hide fade modal-header"  data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-hidden="true">

<div class="modal-header">

    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

    <h4 id="">用户信息</h4>

</div>

<div class="modal-body">

    <div class="row-fluid">
        <div class="span12">
            <form style="margin:0;padding:0;" id="user_form">
                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="username">姓名</label>
                    </div>
                    <div class="span5" ><input id="username" name="username" type="text" placeholder="请输入姓名" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="no">员工编号</label>
                    </div>
                    <div class="span5" ><input id="no"   name="no" type="text" placeholder="请输入编号" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="account">系统账号</label>
                    </div>
                    <div class="span5" ><input   name="account" id="account" type="text" placeholder="请输入系统账号" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="password">密码</label>
                    </div>
                    <div class="span5" ><input id="password"  name="password" type="password" placeholder="请输入密码" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="repassword">确认密码</label>
                    </div>
                    <div class="span5" ><input id="repassword"  name="repassword" type="password" placeholder="请输入确认密码" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="email">邮件地址</label>
                    </div>
                    <div class="span5" ><input  id="email"  name="email" type="text" placeholder="请输入邮件地址" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="tel">电话号码</label>
                    </div>
                    <div class="span5" ><input id="tel"  name="tel" type="text" placeholder="请输入电话号码" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="dept">所属部门</label>
                    </div>
                    <div class="span5" ><input  id="dept" name="dept" type="text" placeholder="请输入所属部门" /></div>
                    <div class="help-inline span3"></div>
                </div>

                <div class="row">
                    <div class="help-inline span4">
                        <label style="text-align: right" for="icon">头像</label>
                    </div>
                    <div class="span5" ><input id="icon"  name="icon" type="text" placeholder="请输入头像" /></div>
                    <div class="help-inline span3"></div>
                </div>
            </form>
        </div>
    </div>

</div>

<div class="modal-footer">
    <button id="user_info_form_submit" class="btn green btn-primary" data-dismiss="modal">确定</button>
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
</div>
</div>