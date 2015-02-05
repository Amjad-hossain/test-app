/**
 * Created by habib on 1/27/15.
 */

var globalDateFormat = 'dd-mm-yyyy';
var okTxt = 'Ok';
var cancelTxt = 'Cancel';
var confirmationTitle = 'Confirmation';
var editTitle = 'Are you sure to edit ?';
var deleteTitle = 'Are you sure to delete ?';

function confirmDialog(title,bodyTitle,successBtnTxt,cancelBtnTxt,fn){
    bootbox.dialog({
        message: bodyTitle,
        title: title,
        buttons: {
            success: {
                label: successBtnTxt,
                className: "btn-success",
                callback: function() {
                    console.log("great success");
                    fn.call(this);
                }
            },
            danger: {
                label: cancelBtnTxt,
                className: "btn-danger",
                callback: function() {
                    console.log("uh oh, look out!");
                }
            }
        }
    });
}