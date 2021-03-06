<%@ page pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    final String contextPath = request.getContextPath();
%>

<script type="text/javascript" src="<%= contextPath %>/resources/js/common/upsert-tuition-fee.js"></script>

<title><spring:message code="tuition.fees.addEdit" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span8 offset2">
                <!-- ==================== TEXT INPUTS HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-ok-sign"></i><h2><spring:message code="tuition.fees.addEdit" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF TEXT INPUTS HEADLINE ==================== -->


                <!-- ==================== TEXT INPUTS FLOATING BOX ==================== -->

                <div class="floatingBox">
                    <div class="container-fluid">
                        <div class="span12">


                            <form:form id="tuitionFeeForm" method="post" action=""  cssClass="form-horizontal contentForm parsley-validated" commandName="tuitionFee">

                                <c:choose>
                                    <c:when test="${tuitionFee.id > 0}">
                                        <form:hidden path="id" id="tuitionFeeId"/>

                                        <div class="control-group">
                                            <label class="control-label">Tuition Fees:*</label>
                                            <div class="controls">
                                                <form:select path="feeType" cssClass="span8 parsley-validated feeTypeSelect">
                                                    <option value=""></option>
                                                    <form:options items="${tuitionFeeTypeList}" itemLabel="type" itemValue="type"/>
                                                </form:select>
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label class="control-label">Class:*</label>
                                            <div class="controls">
                                                <form:select path="standard.id" cssClass="span8 parsley-validated standardSelect">
                                                    <option value=""></option>
                                                    <form:options items="${standardList}" itemLabel="code" itemValue="id"/>
                                                </form:select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label">Tuition Fees for Standard*</label>
                                            <div class="controls">
                                                <form:input path="amount" cssClass="span8 parsley-validated amount"/>
                                            </div>
                                        </div>

                                         <div class="control-group">
                                            <label class="control-label">Tuition Fees for Standard*</label>
                                            <div class="controls">
                                                <form:input path="effectiveDate" cssClass="span8 parsley-validated effectiveDate"/>
                                            </div>
                                        </div>


                                    </c:when>

                                    <c:otherwise>
                                        <select id="feeTypeSelect" style="display:none;">
                                            <option value=""></option>
                                            <c:forEach items="${tuitionFeeTypeList}" var="feeType">
                                                <option value="${feeType.id}">${feeType.type}</option>
                                            </c:forEach>

                                        </select>

                                        <div class="control-group">
                                            <label class="control-label">Tuition Fees for Standard*</label>
                                            <div class="controls">
                                                <select id="standard" class="parsley-validated">
                                                    <option value=""></option>
                                                    <c:forEach items="${standardList}" var="standard">
                                                        <option value="${standard.id}">${standard.code}</option>
                                                    </c:forEach>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="floatingBox table">
                                            <div class="container-fluid">
                                                <table class="table feeTypeTable">
                                                    <thead>
                                                    <tr>
                                                        <th><spring:message code="form.feeType" /></th>
                                                        <th><spring:message code="form.amount" /></th>
                                                        <th><spring:message code="form.effectiveDate" /></th>
                                                        <th></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>





                            <div class="formFooter" style="text-align: right;">
                                <button class="btn btn-primary submitBtn" type="submit">Submit</button>
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
