<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row-fluid">

    <div class="span12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
        <div class="portlet box light-grey">
            <div class="portlet-title">
                <div class="caption"><i class="icon-globe"></i></div>
                <div class="actions">
                    <a href="#"  data-toggle="modal" data-target="#myModal"        class="btn blue"><i class="icon-pencil"></i> Add</a>
                </div>
            </div>

            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover" id="sample_1">

                    <thead>

                    <tr>

                        <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>

                        <th>Username</th>

                        <th class="hidden-480">Email</th>

                        <th class="hidden-480">Points</th>

                        <th class="hidden-480">Joined</th>

                        <th ></th>

                    </tr>

                    </thead>

                    <tbody>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>shuxer</td>

                        <td class="hidden-480"><a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a></td>

                        <td class="hidden-480">120</td>

                        <td class="center hidden-480">12 Jan 2012</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>looper</td>

                        <td class="hidden-480"><a href="mailto:looper90@gmail.com">looper90@gmail.com</a></td>

                        <td class="hidden-480">120</td>

                        <td class="center hidden-480">12.12.2011</td>

                        <td ><span class="label label-warning">Suspended</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>userwow</td>

                        <td class="hidden-480"><a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>user1wow</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td ><span class="label label-inverse">Blocked</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>restest</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>foopl</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>weep</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>coop</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>pppol</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>test</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>userwow</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td ><span class="label label-inverse">Blocked</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>test</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>goop</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>weep</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">15.11.2011</td>

                        <td ><span class="label label-inverse">Blocked</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>toopl</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">16.11.2010</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>userwow</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">9.12.2012</td>

                        <td ><span class="label label-inverse">Blocked</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>tes21t</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">14.12.2012</td>

                        <td ><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>fop</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">13.11.2010</td>

                        <td ><span class="label label-warning">Suspended</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>kop</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">17.11.2010</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>vopl</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.11.2010</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>userwow</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td><span class="label label-inverse">Blocked</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>wap</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">12.12.2012</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>test</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">19.12.2010</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>toop</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">17.12.2010</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    <tr class="odd gradeX">

                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                        <td>weep</td>

                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                        <td class="hidden-480">20</td>

                        <td class="center hidden-480">15.11.2011</td>

                        <td><span class="label label-success">Approved</span></td>

                    </tr>

                    </tbody>

                </table>

            </div>

        </div>

        <!-- END EXAMPLE TABLE PORTLET-->

    </div>

</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
            </div>
            <div class="modal-body">


                <div class="row-fluid">

                    <div class="span12">
                        <!-- BEGIN EXAMPLE TABLE PORTLET-->
                        <div class="portlet box light-grey">
                            <div class="portlet-title">
                                <div class="caption"><i class="icon-globe"></i></div>
                                <div class="actions">
                                    <a href="#" class="btn blue"><i class="icon-pencil"></i> Add</a>
                                </div>
                            </div>

                            <div class="portlet-body">
                                <table class="table table-striped table-bordered table-hover" id="sample_3">

                                    <thead>

                                    <tr>

                                        <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>

                                        <th>Username</th>

                                        <th class="hidden-480">Email</th>

                                        <th class="hidden-480">Points</th>

                                        <th class="hidden-480">Joined</th>

                                        <th ></th>

                                    </tr>

                                    </thead>

                                    <tbody>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>shuxer</td>

                                        <td class="hidden-480"><a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a></td>

                                        <td class="hidden-480">120</td>

                                        <td class="center hidden-480">12 Jan 2012</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>looper</td>

                                        <td class="hidden-480"><a href="mailto:looper90@gmail.com">looper90@gmail.com</a></td>

                                        <td class="hidden-480">120</td>

                                        <td class="center hidden-480">12.12.2011</td>

                                        <td ><span class="label label-warning">Suspended</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>userwow</td>

                                        <td class="hidden-480"><a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>user1wow</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td ><span class="label label-inverse">Blocked</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>restest</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>foopl</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>weep</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>coop</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>pppol</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>test</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>userwow</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td ><span class="label label-inverse">Blocked</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>test</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>goop</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>weep</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">15.11.2011</td>

                                        <td ><span class="label label-inverse">Blocked</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>toopl</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">16.11.2010</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>userwow</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">9.12.2012</td>

                                        <td ><span class="label label-inverse">Blocked</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>tes21t</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">14.12.2012</td>

                                        <td ><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>fop</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">13.11.2010</td>

                                        <td ><span class="label label-warning">Suspended</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>kop</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">17.11.2010</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>vopl</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.11.2010</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>userwow</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">userwow@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td><span class="label label-inverse">Blocked</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>wap</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">test@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">12.12.2012</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>test</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">19.12.2010</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>toop</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">17.12.2010</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    <tr class="odd gradeX">

                                        <td><input type="checkbox" class="checkboxes" value="1" /></td>

                                        <td>weep</td>

                                        <td class="hidden-480"><a href="mailto:userwow@gmail.com">good@gmail.com</a></td>

                                        <td class="hidden-480">20</td>

                                        <td class="center hidden-480">15.11.2011</td>

                                        <td><span class="label label-success">Approved</span></td>

                                    </tr>

                                    </tbody>

                                </table>

                            </div>

                        </div>

                        <!-- END EXAMPLE TABLE PORTLET-->

                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>