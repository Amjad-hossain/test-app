<%@ page pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%
    final String contextPath = request.getContextPath();
%>

<script src="<%= contextPath %>/resources/webcam/jquery.webcam.js"  type="text/javascript"></script>
<script src="<%= contextPath %>/resources/js/common/student-registration.js"  type="text/javascript"></script>

<title><spring:message code="student.profile.view" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span8 offset2">
                <!-- ==================== TEXT INPUTS HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-ok-sign"></i><h2><spring:message code="student.basic.info" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF TEXT INPUTS HEADLINE ==================== -->


                <!-- ==================== TEXT INPUTS FLOATING BOX ==================== -->

                <div class ="span4 pull-right webCamWrapper">

                    <div id="webcam">

                    </div>
                    <%--<canvas id="canvas" height="240" width="320"></canvas>--%>

                    <div style="text-align: center;padding-top: 5px;">
                    <button id="popup-webcam-take-photo" class="btn btn-mini btn-primary" type="button">Take picture</button>
                    <button id="popup-webcam-cancel-photo" class="btn btn-mini btn-danger" type="button">Cancel</button>
                     </div>
                </div>

                <div class="floatingBox">
                    <div class="container-fluid">
                        <div class="span8">


                            <form:form id="studentForm" method="post" action=""  cssClass="form-horizontal contentForm parsley-validated" commandName="student">
                            <div class="control-group">
                                <label class="control-label">Full Name *</label>
                                <div class="controls">
                                    <%--<input name="profile.name" id="name" class="span10"/>--%>
                                    <form:input path="profile.name" cssClass="span10"/>
                                </div>
                            </div>

                             <div class="control-group">
                                <label class="control-label"><spring:message code="form.fathers.name" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.fatherName" cssClass="span10"/>
                                </div>
                            </div>
                             <div class="control-group">
                                <label class="control-label"><spring:message code="form.mothers.name" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.motherName" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                             <div class="control-group">
                                <label class="control-label">Class Name *</label>
                                <div class="controls">
                                    <form:select path="standard.id" cssClass="standard parsley-validated">
                                        <option value=""></option>
                                        <form:options items="${student.standardList}" itemValue="id" itemLabel="code"/>
                                    </form:select>
                                </div>
                            </div>
                             <div class="control-group">
                                <label class="control-label"><spring:message code="form.villOrHouse" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.villageOrArea" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                             <div class="control-group">
                                <label class="control-label"><spring:message code="form.district" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.district" cssClass="span10 parsley-validated" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><spring:message code="form.thana" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.thana" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><spring:message code="form.postOffice" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.postOffice" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><spring:message code="form.email" /> </label>
                                <div class="controls">
                                    <form:input path="profile.email" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                            <div class="control-group last">
                                <label class="control-label"><spring:message code="form.dateOfBirth" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.dateOfBirth" cssClass="span10 " id="dateOfBirth" />
                                </div>
                            </div>
                            <form:hidden path="profile.binaryFileData" id="binaryFileData"/>
                            <div class="formFooter">
                                <button class="btn btn-primary" type="submit">Submit</button>
                                <button class="btn" type="reset">Reset</button>
                            </div>
                        </form:form>
                        </div>
                    </div>
                <!-- ==================== END OF TEXT INPUTS FLOATING BOX ==================== -->
                </div>
              </div>
        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->
