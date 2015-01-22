<%@ page pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%
    final String contextPath = request.getContextPath();
%>

<title><spring:message code="student.profile.view" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span12">
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
                     </div>
                </div>

                <div class="floatingBox">
                    <div class="container-fluid">
                        <div class="span8">
                        <dynamic-attributes>true</dynamic-attributes>

                        <form:form method="post" action="" cssClass="form-horizontal" commandName="student">
                            <%--<form:input path="profile.name" cssClass="span10 parsley-validated"/>--%>
                            <div class="control-group">
                                <label for="fullname" class="control-label">Full Name *</label>
                                <div class="controls">
                                    <form:input path="profile.name" cssClass="span10 parsley-validated"/>
                                    <%--<form:input path="name" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" cssClass="span10 parsley-validated"/>--%>
                                </div>
                            </div>
                             <%--<div class="control-group">
                                <label for="fName" class="control-label"><spring:message code="form.fathers.name" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.fatherName" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" id="fName" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>
                             <div class="control-group">
                                <label for="mName" class="control-label"><spring:message code="form.mothers.name" /> *</label>
                                <div class="controls">
                                    <form:input path="profile.motherName" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" id="mName" cssClass="span10 parsley-validated"/>
                                </div>
                            </div>--%>
                            <%-- <div class="control-group">
                                <label for="fullname" class="control-label">Class Name *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                             <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.villOrHouse" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                             <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.district" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.thana" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.postOffice" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.postOffice" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="email" class="control-label">Email </label>
                                <div class="controls">
                                    <input type="text" data-minlength="3" class="span10 parsley-validated" data-type="email" data-required="true" data-trigger="change" data-validation-minlength="0" name="email" id="email">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="password" class="control-label">Password *</label>
                                <div class="controls">
                                    <input type="password" class="span10 parsley-validated" data-minlength="6" data-type="alphanum" data-required="true" data-trigger="change" data-validation-minlength="0" name="password" id="password">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="passwordConf" class="control-label">Password Confirmation *</label>
                                <div class="controls">
                                    <input type="password" class="span10 parsley-validated" data-equalto="#password" data-minlength="6" data-type="alphanum" data-required="true" data-trigger="change" data-validation-minlength="0" name="passwordConf" id="passwordConf">
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="website" class="control-label">Website *</label>
                                <div class="controls">
                                    <input type="text" data-type="url" data-required="true" data-trigger="change" data-validation-minlength="0" class="span10 parsley-validated" name="website" id="website">
                                </div>
                            </div>
                            <div class="control-group last">
                                <label for="date" class="control-label">Birth Date *</label>
                                <div class="controls">
                                    <input type="text" placeholder="YYYY-MM-DD" class="span10 parsley-validated parsley-error" data-required="true" data-trigger="change" data-type="dateIso" id="date" name="date"><ul id="parsley-535313013068583" class="parsley-error-list" style="display: block;"><li class="type" style="display: list-item;">This value should be a valid date (YYYY-MM-DD).</li><li class="required" style="display: list-item;">This value is required.</li></ul>
                                </div>
                            </div>--%>
                            <%--<form:input id="file" path="fileData" cssStyle="display:block;" />--%>
                            <form:input id="file2" path="binaryFileData"/>
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

<div id="flash" style="height: 100px;"></div>

<script type="text/javascript">
    $(function() {
        var pos = 0, ctx = null;
        var c=document.createElement("canvas");
        var ctx=c.getContext("2d");
        var frameWidth = parseInt(280);
        var frameHeight = parseInt(240);
        var img=ctx.createImageData(frameWidth,frameHeight);

//        var img=ctx.createImageData(320,240);
        c.setAttribute('width', frameWidth);
        c.setAttribute('height', frameHeight);


        jQuery("#webcam").webcam({

            width: frameWidth,
            height: frameHeight,
            mode: "callback",
//            swffile: "../resources/webcam/jscam.swf",
            swffile: "../resources/webcam/jscam_canvas_only.swf",

            onTick: function(remain) {

                if (0 == remain) {
                    console.log("Cheese!");
                } else {
                    console.log(remain + " seconds remaining...");
                }
            },

            onSave: function(data) {
                var col = data.split(";");
                for (var i=0;i<frameWidth;i++){
                    var tmp = parseInt(col[i]);
                    img.data[pos+0]=(tmp >> 16) & 0xff;
                    img.data[pos+1]=(tmp >> 8) & 0xff;
                    img.data[pos+2]=tmp & 0xff;
                    img.data[pos+3]=0xff;
                    pos+= 4;
                }

                if (pos >= 4 * frameWidth * frameHeight) {
                    ctx.putImageData(img, 0, 0);
                    pos = 0;
                }
            },

            onCapture: function () {
                jQuery("#flash").css("display", "block");
                jQuery("#flash").fadeOut("fast", function () {
                    jQuery("#flash").css("opacity", 1);
                });

                webcam.save();
                $(".webCamWrapper").append(c);
            },

            debug: function (type, string) {
                console.log(type + ": " + string);
            },

            onLoad: function () {

                var cams = webcam.getCameraList();
                for(var i in cams) {
                    jQuery("#cams").append("<li>" + cams[i] + "</li>");
                }
            }
        });

        $('#popup-webcam-cams').change(function() {
            var $cam = $('#webcam');
            var success = $cam.webcam('setCamera', $(this).val());
            if (!success) {
                $cam.webcam('debug', 'error', 'Unable to select camera');
            } else {
                $cam.webcam('debug', 'notice', 'Camera changed');
            }
        });
        $('#popup-webcam-take-photo').click(function(e) {
            webcam.capture();
            $(c).insertAfter($("#webcam"));
            $("#file2").val(($(".webCamWrapper").find('canvas')[0].toDataURL("image/png").replace("data:image/png;base64,", "")));
        });
    });
</script>

