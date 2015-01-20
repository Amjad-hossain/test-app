<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.dsoft.util.Utils" %>
<%@ page import="com.dsoft.entity.Role" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%
    final String contextPath = request.getContextPath();
%>
<c:set var="admin" value="<%=Role.ADMIN.getLabel()%>" scope="session"/>
<c:set var="employee" value="<%=Role.EMPLOYEE.getLabel()%>" scope="session"/>
<c:set var="legal" value="<%=Role.LEGAL.getLabel()%>" scope="session"/>
<c:set var="ia_analyst" value="<%=Role.IA_ANALYST.getLabel()%>" scope="session"/>
<c:set var="ia_manager" value="<%=Role.IA_MANAGER.getLabel()%>" scope="session"/>
<c:set var="compliance" value="<%=Role.COMPLIANCE.getLabel()%>" scope="session"/>



<!DOCTYPE html>
<link rel="shortcut icon" type="image/x-icon" href="<%= contextPath %>/resources/images/new_logo.png" />
<%--<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->--%>
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery-1.9.1.min.js"></script>


    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-slider.js"></script>                   <!-- bootstrap slider plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.sparkline.min.js"></script>               <!-- small charts plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.flot.min.js"></script>                    <!-- charts plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.flot.resize.min.js"></script>             <!-- charts plugin / resizing extension -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.flot.pie.min.js"></script>                <!-- charts plugin / pie chart extension -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/wysihtml5-0.3.0_rc2.min.js"></script>            <!-- wysiwyg plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-wysihtml5-0.0.2.min.js"></script>      <!-- wysiwyg plugin / bootstrap extension -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-tags.js"></script>                     <!-- multivalue input tags -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.tablesorter.min.js"></script>             <!-- tablesorter plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.tablesorter.widgets.min.js"></script>     <!-- tablesorter plugin / widgets extension -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/jquery.tablesorter.pager.min.js"></script>       <!-- tablesorter plugin / pager extension -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/raphael.2.1.0.min.js"></script>                  <!-- vector graphic plugin / for justgage.js -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/justgage.js"></script>                           <!-- justgage plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-multiselect.js"></script>              <!-- multiselect plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-datepicker.js"></script>               <!-- datepicker plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-colorpicker.js"></script>              <!-- colorpicker plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/parsley.min.js"></script>                        <!-- parsley validator plugin -->
    <script src="<%= contextPath %>/resources/theme/js/vendor/formToWizard.js"></script>                       <!-- form wizard plugin -->

    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap.js"></script>
    <script src="<%= contextPath %>/resources/theme/js/vendor/bootstrap-editable.js"></script>             <!-- editable fields plugin -->
    <script src="<%= contextPath %>/resources/theme/js/thekamarel.min.js"></script>                            <!-- main project js file -->

    <script src="<%= contextPath %>/resources/js/jquery.browser.min.js"  type="text/javascript"></script>

    <script src="<%= contextPath %>/resources/flexigrid/js/flexigrid.js"  type="text/javascript"></script>
    <link href='<%= contextPath %>/resources/flexigrid/css/flexigrid.css' rel='stylesheet' type='text/css'>

    <%--kamarel theme--%>
    <link rel="stylesheet" href="<%= contextPath %>/resources/theme/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="<%= contextPath %>/resources/theme/css/styles.css">


    <script src="<%= contextPath %>/resources/webcam/jquery.webcam.js"  type="text/javascript"></script>

</head>
<body id="ipboard_body" class="commonForm wysihtml5-supported">

    <tiles:insertAttribute name="header"/>
    <tiles:insertAttribute name="mainMenu"/>

    <!-- ==================== PAGE CONTENT ==================== -->
    <div class="content">

    <tiles:insertAttribute name="dashboard"/>

        <!-- ==================== WIDGETS CONTAINER ==================== -->
        <div class="container-fluid">

        <tiles:insertAttribute name="body"/>

        </div>
        <!-- ==================== END OF WIDGETS CONTAINER ==================== -->
    </div>
    <!-- ==================== END OF PAGE CONTENT ==================== -->

    <%--<tiles:insertAttribute name="footer"/>--%>

</body>
</html>