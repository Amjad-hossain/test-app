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
                <div id="webcam"></div>

                <div class="floatingBox">
                    <div class="container-fluid">
                        <div class="span8">



                        <form data-validate="parsley" class="form-horizontal">
                            <div class="control-group">
                                <label for="fullname" class="control-label">Full Name *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fullname" class="span10 parsley-validated">
                                </div>
                            </div>
                             <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.fathers.name" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="fName" class="span10 parsley-validated">
                                </div>
                            </div>
                             <div class="control-group">
                                <label for="fullname" class="control-label"><spring:message code="form.mothers.name" /> *</label>
                                <div class="controls">
                                    <input type="text" data-minlength="4" data-required="true" data-trigger="change" data-validation-minlength="0" name="fullname" id="mName" class="span10 parsley-validated">
                                </div>
                            </div>
                             <div class="control-group">
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
                            </div>
                            <div class="formFooter">
                                <button class="btn btn-primary" type="submit">Submit</button>
                                <button class="btn" type="reset">Reset</button>
                            </div>
                        </form>
                        </div>
                    </div>
                <!-- ==================== END OF TEXT INPUTS FLOATING BOX ==================== -->
                </div>
              </div>
        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->

<script type="text/javascript">
    $(function() {
        console.log("SMNLOG:i am here...");
        $('#webcam').webcam({
            noCameraFound: function () {
                this.debug('error', 'Web camera is not available');
            },
            error: function(e) {
                this.debug('error', 'Internal camera plugin error');
            },
            cameraDisabled: function () {
                this.debug('error', 'Please allow access to your camera');
            },
            debug: function(type, string) {
                if (type == 'error') {
                    $(".webcam-error").html(string);
                } else {
                    $(".webcam-error").html('');
                }
            },
            cameraEnabled: function () {
                this.debug('notice', 'Camera enabled');
                if (this.isCameraEnabled) return;
                this.isCameraEnabled = true;
                $('#popup-webcam-cams')
                        .append($.map(this.getCameraList(), function(cam, i) {
                            return '<option value="' + i + '">' + cam + '</option>';
                        }).join(''));
                setTimeout($.proxy(function() {
                    this.setCamera('0');
                    $('#popup-webcam-take-photo')
                            .prop('disabled', false)
                            .show();
                }, this), 750);
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
            e.preventDefault();
            var api = $('#webcam').data('webcam');
            var result = api.save();
            if (result && result.length) {
                var shotResolution = api.getResolution();
                var img = new Image();
                img.src = 'data:image/jpeg;base64,' + result;
                $('#result').append(img);
                alert('base64encoded jpeg (' + shotResolution[0] + 'x' + shotResolution[1] + '): ' + result.length + 'chars');
                /* resume camera capture */
                api.setCamera($('#popup-webcam-cams').val());
            } else {
                api.debug('error', 'Broken camera');
            }
        });
    });
</script>
<%--
<script>
    $(document).ready(function(){
    jQuery("#webcam").webcam({
        width: 320,
        height: 240,
        mode: "callback",
        swffile: "/jscam_canvas_only.swf", // canvas only doesn't implement a jpeg encoder, so the file is much smaller
        onTick: function(remain) {
            if (0 == remain) {
                jQuery("#status").text("Cheese!");
            } else {
                jQuery("#status").text(remain + " seconds remaining...");
            }
        },
        onSave: function(data) {
            var col = data.split(";");
            // Work with the picture. Picture-data is encoded as an array of arrays... Not really nice, though =/
        },
        onCapture: function () {
            webcam.save();
            // Show a flash for example
        },
        debug: function (type, string) {
            // Write debug information to console.log() or a div, ...
        },
        onLoad: function () {
            // Page load
            var cams = webcam.getCameraList();
            for(var i in cams) {
                jQuery("#cams").append("<li>" + cams[i] + "</li>");
            }
        }
    });
    });


</script>--%>
