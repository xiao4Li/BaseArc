<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sys_user_info" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">

<div class="modal-header">

    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>

    <h6 id="">用户信息</h6>

</div>

<div class="modal-body">

    <div class="portlet-body form">

        <!-- BEGIN FORM-->

        <form action="#" class="horizontal-form">

            <h3 class="form-section">Person Info</h3>

            <div class="row-fluid">

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label" for="firstName">First Name</label>

                        <div class="controls">

                            <input type="text" id="firstName" class="m-wrap span12" placeholder="Chee Kin">

                            <span class="help-block">This is inline help</span>

                        </div>

                    </div>

                </div>

                <!--/span-->

                <div class="span6 ">

                    <div class="control-group error">

                        <label class="control-label" for="lastName">Last Name</label>

                        <div class="controls">

                            <input type="text" id="lastName" class="m-wrap span12" placeholder="Lim">

                            <span class="help-block">This field has error.</span>

                        </div>

                    </div>

                </div>

                <!--/span-->

            </div>

            <!--/row-->

            <div class="row-fluid">

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Gender</label>

                        <div class="controls">

                            <select class="m-wrap span12">

                                <option value="">Male</option>

                                <option value="">Female</option>

                            </select>

                            <span class="help-block">Select your gender.</span>

                        </div>

                    </div>

                </div>

                <!--/span-->

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Date of Birth</label>

                        <div class="controls">

                            <input type="text" class="m-wrap span12" placeholder="dd/mm/yyyy">

                        </div>

                    </div>

                </div>

                <!--/span-->

            </div>

            <!--/row-->

            <div class="row-fluid">

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Category</label>

                        <div class="controls">

                            <div class="select2-container span12 select2_category" id="s2id_autogen1"><a href="javascript:void(0)" onclick="return false;" class="select2-choice select2-default" tabindex="-1">   <span>Choose a Category</span><abbr class="select2-search-choice-close" style="display: none;"></abbr>   <div><b></b></div></a><input class="select2-focusser select2-offscreen" type="text" id="s2id_autogen2"><div class="select2-drop select2-with-searchbox" style="display:none">   <div class="select2-search">       <input type="text" autocomplete="off" class="select2-input" tabindex="1">   </div>   <ul class="select2-results">   </ul></div></div><select class="span12 select2_category select2-offscreen" data-placeholder="Choose a Category" tabindex="-1">

                            <option value=""></option>

                            <option value="Category 1">Category 1</option>

                            <option value="Category 2">Category 2</option>

                            <option value="Category 3">Category 5</option>

                            <option value="Category 4">Category 4</option>

                        </select>

                        </div>

                    </div>

                </div>

                <!--/span-->

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Membership</label>

                        <div class="controls">

                            <label class="radio">

                                <div class="radio"><span><input type="radio" name="optionsRadios2" value="option1"></span></div>

                                Free

                            </label>

                            <label class="radio">

                                <div class="radio"><span class="checked"><input type="radio" name="optionsRadios2" value="option2" checked=""></span></div>

                                Professional

                            </label>

                        </div>

                    </div>

                </div>

                <!--/span-->

            </div>

            <!--/row-->

            <h3 class="form-section">Address</h3>

            <div class="row-fluid">

                <div class="span12 ">

                    <div class="control-group">

                        <label class="control-label">Street</label>

                        <div class="controls">

                            <input type="text" class="m-wrap span12">

                        </div>

                    </div>

                </div>

            </div>

            <div class="row-fluid">

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">City</label>

                        <div class="controls">

                            <input type="text" class="m-wrap span12">

                        </div>

                    </div>

                </div>

                <!--/span-->

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">State</label>

                        <div class="controls">

                            <input type="text" class="m-wrap span12">

                        </div>

                    </div>

                </div>

                <!--/span-->

            </div>

            <!--/row-->

            <div class="row-fluid">

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Post Code</label>

                        <div class="controls">

                            <input type="text" class="m-wrap span12">

                        </div>

                    </div>

                </div>

                <!--/span-->

                <div class="span6 ">

                    <div class="control-group">

                        <label class="control-label">Country</label>

                        <div class="controls">

                            <select class="m-wrap span12"></select>

                        </div>

                    </div>

                </div>

                <!--/span-->

            </div>

            <div class="form-actions">

                <button type="submit" class="btn blue"><i class="icon-ok"></i> Save</button>

                <button type="button" class="btn">Cancel</button>

            </div>

        </form>

        <!-- END FORM-->

    </div>

</div>

<div class="modal-footer">

    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>

    <button class="btn green btn-primary" data-dismiss="modal">Save changes</button>

</div>

</div>