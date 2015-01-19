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

<title><spring:message code="landingPage.transactionMonitoring" /></title>

<c:set var="adminUser" value="<%=Role.ADMIN.getLabel()%>"/>
<c:set var="employee" value="<%=Role.EMPLOYEE.getLabel()%>"/>
<c:set var="legal_role" value="<%=Role.LEGAL.getLabel()%>"/>
<c:set var="compliance_role" value="<%=Role.COMPLIANCE.getLabel()%>"/>
<c:set var="ia_manager_role" value="<%=Role.IA_MANAGER.getLabel()%>"/>


<!-- ==================== PAGE CONTENT ==================== -->
<div class="content">

    <!-- ==================== TITLE LINE FOR HEADLINE ==================== -->
    <div class="titleLine">
        <div class="container-fluid">
            <div class="titleIcon"><i class="icon-list"></i></div>
            <ul class="titleLineHeading">
                <li class="heading"><h1>Form Elements</h1></li>
            </ul>
            <ul class="titleLineOnRight pull-right">
                <li>
                    <span class="usersBar">100,235,549,222,639,335,800</span>
                    <h2 class="cyanText">1254<span class="greyText">users</span></h2>
                </li>
                <li>
                    <span class="visitsBar">20,35,10,80,52,34,74,99,45,68</span>
                    <h2 class="redText">758<span class="greyText">visits</span></h2>
                </li>
                <li>
                    <span class="ordersBar">254,159,480,531,214,984,671</span>
                    <h2 class="greenText">3541<span class="greyText">orders</span></h2>
                </li>
            </ul>
        </div>
    </div>
    <!-- ==================== END OF TITLE LINE ==================== -->

    <!-- ==================== BREADCRUMBS / DATETIME ==================== -->
    <ul class="breadcrumb">
        <li><i class="icon-home"></i><a href="index.html"> Home</a> <span class="divider"><i class="icon-angle-right"></i></span></li>
        <li>Form Elements <span class="divider"><i class="icon-angle-right"></i></span></li>
        <li class="active">Common Form Elements</li>
        <li class="moveDown pull-right">
            <span class="time"></span>
            <span class="date"></span>
        </li>
    </ul>
    <!-- ==================== END OF BREADCRUMBS / DATETIME ==================== -->

    <!-- ==================== WIDGETS CONTAINER ==================== -->
    <div class="container-fluid">

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">
            <div class="span6">
                <!-- ==================== TEXT INPUTS HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-edit"></i><h2>Text Inputs</h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF TEXT INPUTS HEADLINE ==================== -->

                <!-- ==================== TEXT INPUTS FLOATING BOX ==================== -->
                <div class="floatingBox">
                    <div class="container-fluid">
                        <form class="form-horizontal contentForm">
                            <div class="control-group">
                                <label class="control-label">Normal input field</label>
                                <div class="controls">
                                    <input type="text" class="span10">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Password input field</label>
                                <div class="controls">
                                    <input type="password" class="span10">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Input with description</label>
                                <div class="controls">
                                    <input type="text" class="span10"><span class="help-block greyText">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Input with placeholder</label>
                                <div class="controls">
                                    <input type="text" class="span10" placeholder="This is a placeholder...">
                                </div>
                            </div>
                            <div class="control-group last">
                                <label class="control-label">Normal textarea</label>
                                <div class="controls">
                                    <textarea class="span10"></textarea>
                                </div>
                            </div>
                            <div class="formFooter">
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- ==================== END OF TEXT INPUTS FLOATING BOX ==================== -->
            </div>
            <div class="span6">
                <!-- ==================== OTHER ELEMENTS HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-list"></i><h2>Other Elements</h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF OTHER ELEMENTS HEADLINE ==================== -->

                <!-- ==================== OTHER ELEMENTS FLOATING BOX ==================== -->
                <div class="floatingBox">
                    <div class="container-fluid">
                        <form class="form-horizontal contentForm">
                            <div class="control-group">
                                <label class="control-label">Normal-Select Box</label>
                                <div class="controls">
                                    <select id="uniqueSelect">
                                        <option id="opt1" value="opt1">First Option</option>
                                        <option id="opt2" value="opt2">Second Option</option>
                                        <option id="opt3" value="opt3">Third Option</option>
                                        <option id="opt4" value="opt4">Fourth Option</option>
                                        <option id="opt5" value="opt5">Fifth Option</option>
                                        <option id="opt6" value="opt6">Sixth Option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Multiple-Select Box</label>
                                <div class="controls">
                                    <select id="multipleSelect" multiple="multiple">
                                        <option id="opt7" value="opt7" selected>First Option</option>
                                        <option id="opt8" value="opt8" selected>Second Option</option>
                                        <option id="opt9" value="opt9" selected>Third Option</option>
                                        <option id="opt10" value="opt10">Fourth Option</option>
                                        <option id="opt11" value="opt11">Fifth Option</option>
                                        <option id="opt12" value="opt12">Sixth Option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Datepicker field</label>
                                <div class="controls">
                                    <input id="datepickerField" type="text" class="span10" value="04/26/2013">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Colorpicker HEX field</label>
                                <div class="controls">
                                    <input id="hexColorPicker" type="text" class="span10">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Colorpickex RGB field</label>
                                <div class="controls">
                                    <input id="rgbColorPicker" type="text" class="span10">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputFile">File upload field</label>
                                <div class="controls">
                                    <input type="file" id="inputFile" style="display: none">
                                    <div class="dummyfile">
                                        <input id="filename" type="text" class="input disabled span10" name="filename" readonly>
                                        <a id="fileselectbutton" class="btn">Browse</a>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Checkbox inputs</label>
                                <div class="controls">
                                    <input id="demo_box_1" class="css-checkbox" type="checkbox" checked/>
                                    <label for="demo_box_1" class="css-label">First checkbox input</label>
                                    <input id="demo_box_2" class="css-checkbox" type="checkbox"/>
                                    <label for="demo_box_2" class="css-label">Second checkbox input</label>
                                    <input id="demo_box_3" class="css-checkbox" type="checkbox"/>
                                    <label for="demo_box_3" class="css-label">Third checkbox input</label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Radio inputs</label>
                                <div class="controls">
                                    <input id="demo_box_4" class="css-radio" name="myRadio" type="radio" checked/>
                                    <label for="demo_box_4" class="css-label radio">First radio input</label>
                                    <input id="demo_box_5" class="css-radio" name="myRadio" type="radio"/>
                                    <label for="demo_box_5" class="css-label radio">Second radio input</label>
                                    <input id="demo_box_6" class="css-radio" name="myRadio" type="radio"/>
                                    <label for="demo_box_6" class="css-label radio">Third radio input</label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- ==================== END OF OTHER ELEMENTS FLOATING BOX ==================== -->
            </div>
        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->

    </div>
    <!-- ==================== END OF WIDGETS CONTAINER ==================== -->
</div>
<!-- ==================== END OF PAGE CONTENT ==================== -->

<script>

    $(function () {

        $('#uniqueSelect').multiselect();

        $('#multipleSelect').multiselect({
            buttonText: function(options, select) {
                if (options.length == 0) {
                    return 'None selected <b class="caret"></b>';
                }
                else if (options.length > 1) {
                    return options.length + ' selected <b class="caret"></b>';
                }
                else {
                    var selected = '';
                    options.each(function() {
                        selected += $(this).text() + ', ';
                    });
                    return selected.substr(0, selected.length -2) + ' <b class="caret"></b>';
                }
            }
        });

        $('#datepickerField').datepicker();

        $('#hexColorPicker').colorpicker();

        $('#rgbColorPicker').colorpicker({
            format: 'rgb'
        });

        $( "#fileselectbutton" ).click(function(e){
            $( "#inputFile" ).trigger("click");
        });

        $( "#inputFile" ).change(function(e){
            var val = $(this).val();
            var file = val.split(/[\\/]/);
            $( "#filename" ).val(file[file.length-1]);
        });

    })


</script>
