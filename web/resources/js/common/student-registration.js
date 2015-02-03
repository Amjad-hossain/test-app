/**
 * Created by habib on 1/27/15.
 */

$(document).ready(function() {

    /* initial form validation declaration */

    $("input[name='profile.name'],input[name='profile.fatherName'],input[name='profile.motherName']").attr('data-minlength',"4")
        .attr('data-required','true');

    $("input[name='profile.dateOfBirth']").attr('data-type','dateIso').attr('placeholder',globalDateFormat).attr('data-required','true');
    $("input[name='profile.email']").attr('data-type','email');

    $(".standard").attr('data-required','true');

    /*Date initialization */
    $('#dateOfBirth').datepicker({ format: globalDateFormat});
    $('#studentForm').parsley({

    });



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
        $("#webcam").hide();
        $("#binaryFileData").val(($(".webCamWrapper").find('canvas')[0].toDataURL("image/png").replace("data:image/png;base64,", "")));
    });

    $('#popup-webcam-cancel-photo').click(function(e) {
        $(".webCamWrapper").find('canvas').remove();
        $("#webcam").show();
        $("#binaryFileData").val("");
    });

    /*DELETE FROM `student` WHERE id > 0;
    DELETE FROM `profile` WHERE id > 0;
    DELETE FROM `standard` WHERE id > 0;*/

});



