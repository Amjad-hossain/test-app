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
<script type="text/javascript" src="<%= contextPath %>/resources/js/common/tuition-fee-list.js"></script>

<title><spring:message code="tuition.fees" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span12">
                <!-- ==================== ACTIVITIES HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-reorder"></i><h2><spring:message code="tuition.fees" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF ACTIVITIES HEADLINE ==================== -->

                <!-- ==================== ACTIVITIES FLOATING BOX ==================== -->
                <div class="floatingBox">
                    <div class="container-fluid">

                        <div id="searchBlockId" class="centerAlign">
                            <div class="searchParameterDiv">
                                <div class="createNewBtnWrapperDiv">
                                    <button type="button" class="btn btn-primary addNewTuitionBtn"><i class="icon-eye-open"></i> <spring:message code="tuition.add.new.btn" /></button>
                                </div>
                                <%--<form id="trxSearchForm" commandName="GlobalTransactionSearch" method="post" action="" >
                                    <table id="trxSearch">
                                        <tr>
                                            <td><spring:message code="newRiskAssessmentSummary.transactionID"/> :
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
                                    </table>
                                </form>--%>
                                <!-- ==================== END OF TEXT INPUTS FLOATING BOX ==================== -->
                            </div>
                        </div>
                        <div class="customFlexigridCss">
                            <table id="tuitionFeeListTable">
                            </table>
                        </div>
                    </div>
                </div>
                <!-- ==================== END OF ACTIVITIES FLOATING BOX ==================== -->
            </div>
        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->
