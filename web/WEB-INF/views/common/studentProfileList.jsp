<%@ page import="com.dsoft.entity.Role" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%
    final String contextPath = request.getContextPath();
%>

<title id='Description'>jqxChart Pie Series Example</title>
<link rel="stylesheet" href="<%= contextPath %>/resources/jqwidgets/styles/jqx.base.css" type="text/css" />
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxdraw.js"></script>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxchart.core.js"></script>
<%--<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxgauge.js"></script>--%>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxdata.js"></script>

<title><spring:message code="student.profile.view" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span12">
                <!-- ==================== ACTIVITIES HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-reorder"></i><h2><spring:message code="student.list" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF ACTIVITIES HEADLINE ==================== -->

                <!-- ==================== ACTIVITIES FLOATING BOX ==================== -->
               <%-- <div class="floatingBox">
                    <div class="container-fluid">

                        <div id="transactionSearchBlockId" class="centerAlign">
                            <div class="searchParameterDiv">
                                <form:form id="trxSearchForm" commandName="GlobalTransactionSearch" method="post"
                                           action="transactionSearch.html?param=1" data-validate="parsley">
                                    <table id="trxSearch">
                                        <tr>
                                            <td><spring:message
                                                    code="newRiskAssessmentSummary.transactionID"/> :
                                            </td>
                                            <td><form:input path="transactionId"
                                                            id="transactionId" type="text"
                                                            data-type="number"
                                                            data-trigger="change"
                                                            class=" leftPaddingForText"/></td>
                                            <form:errors path="transactionId"/>

                                            <td><spring:message
                                                    code="globalSearch.nameOfThirdPartyOrCustomerOrEmployee"/> :
                                            </td>
                                            <td><form:input path="nameOfThirdParty"
                                                            id="nameOfThirdParty"
                                                            class=" leftPaddingForText" type="text"/></td>
                                        </tr>
                                        <tr>
                                            <td><spring:message code="newRiskAssessmentSummary.amount"/>
                                                :
                                            </td>
                                            <td><form:input path="amount" id="amount"
                                                            placeholder="must be a number"
                                                            class=" leftPaddingForText"
                                                            data-trigger="change"
                                                            data-type="number"
                                                            data-validation-minlength="0"/>

                                            <td><spring:message code="newRiskAssessmentSummary.date"/> : </td>
                                            <td><form:input path="transactionDate"
                                                            id="transactionDate"
                                                            class=" leftPaddingForText" type="text"/>
                                                <form:errors path="transactionDate"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><spring:message code="globalSearch.typeOfTransaction"/>: </td>
                                            <td>
                                                <div class="styled-select">
                                                    <form:select path="transactionType" id="transactionType">
                                                        <form:option value="" label="Select transaction type"/>
                                                        <form:options items="${transactionTypeList}" itemLabel="value"
                                                                      itemValue="value"/>
                                                    </form:select>
                                                </div>
                                            </td>
                                            <td><spring:message code="globalSearch.approverName"/> :</td>
                                            <td><form:input path="approver" id="approver"
                                                            class=" leftPaddingForText" type="text"
                                                            data-trigger="change"/></td>
                                        </tr>

                                        <tr>
                                            <td><spring:message code="globalSearch.freeText"/> :</td>
                                            <td ><form:input path="freeText" id="freeText"
                                                             class=" leftPaddingForText" type="text"
                                                             data-trigger="change"/></td>
                                            <td colspan="2"><button id="trxSearchSubmitButton" type="button"
                                                                    class="btn btn-primary"><spring:message code="search"/></button>
                                            </td>
                                        </tr>
                                    </table>
                                </form:form>
                                &lt;%&ndash; </div>
                             </div>&ndash;%&gt;
                                <!-- ==================== END OF TEXT INPUTS FLOATING BOX ==================== -->
                            </div>
                        </div>


                        <div class="span12 leftMarginZero">

                            <!-- ==================== SPAN12 HEADLINE ==================== -->
                            <div class="containerHeadline">
                                <i class="icon-th"></i>

                                <h2></h2>

                                <div class="controlButton pull-right">&lt;%&ndash;<i class="icon-remove removeElement"></i>&ndash;%&gt;</div>
                                <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                            </div>
                            <!-- ==================== END OF SPAN12 HEADLINE ==================== -->

                            <!-- ==================== SPAN12 FLOATING BOX ==================== -->
                            <div class="floatingBox">
                                <div class="container-fluid">
                                    <div class="customFlexigridCss">
                                        <table id="transactionSearchTable">
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- ==================== END OF SPAN12 FLOATING BOX ==================== -->

                        </div>
                    </div>
                </div>--%>
                <!-- ==================== END OF ACTIVITIES FLOATING BOX ==================== -->
            </div>


        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->
