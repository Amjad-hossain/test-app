/**
 * Created by habib on 1/27/15.
 */

$(document).ready(function() {

    /* initial form validation declaration */

   /* $("input[name='profile.name'],input[name='profile.fatherName'],input[name='profile.motherName']").attr('data-minlength',"4")
        .attr('data-required','true');

    $("input[name='profile.dateOfBirth']").attr('data-type','dateIso').attr('placeholder',globalDateFormat).attr('data-required','true');
    $("input[name='profile.email']").attr('data-type','email');

    $(".standard").attr('data-required','true');

    *//*Date initialization *//*
    $('#dateOfBirth').datepicker({ format: 'dd-mm-yyyy'});
    $('#studentForm').parsley({

    });*/

    $(".addNewTuitionBtn").click(function(){
    window.location = "./upsertTuitionFees.html";
    });

    $(document).on('click',".tuitionFeeEditBtn",function(){
        var that = this;
        var tuitionFeeId = $(that).closest('tr').find('td:last').text().trim();

        confirmDialog(confirmationTitle,editTitle,okTxt,cancelTxt,function(that){
            console.log("SMNLOG:tuitionFeeId:"+tuitionFeeId);
            window.location = './upsertTuitionFees.html?tuitionFeeId='+tuitionFeeId;

        });
    });

     $(document).on('click',".tuitionFeeDisableBtn",function(){
        var that = this;
        var tuitionFeeId = $(that).closest('tr').find('td:last').text().trim();

        confirmDialog(confirmationTitle,editTitle,okTxt,cancelTxt,function(that){
            console.log("SMNLOG:tuitionFeeId:"+tuitionFeeId);
            window.location = './disableTuitionFee.html?tuitionFeeId='+tuitionFeeId;

        });
    });

    $(function () {

        $("#tuitionFeeListTable").flexigrid({
            url : './getTuitionFeeJSON.html',
            dataType : 'json',
            colModel : [ {
                display : 'Fee Type',
                name : 'feeType',
                width : 370,
                sortable : true,
                align : 'left'
            },{
                display : 'Class',
                name : 'standardStr',
                width : 150,
                sortable : true,
                align : 'left'
            },{
                display : 'Amount',
                name : 'amount',
                width : 150,
                sortable : true,
                align : 'left'
            }, {
                display : 'Effective Date',
                name : 'effDateStr',
                width : 120,
                sortable : false,
                align : 'left'
            }, {
                display : 'Status',
                name : 'enableOrDisableHtml',
                width : 115,
                sortable : false,
                align : 'center'
            }, {
                display : '',
                name : 'editBtnHtml',
                width : 100,
                sortable : true,
                align : 'center'
            }, {
                display : '',
                name : 'disableBtnHtml',
                width : 150,
                sortable : true,
                align : 'center'
            }, {
                display : 'Backend data',
                name : 'id',
                width : 1,
                hide : true,
                align : 'center'
            }],
            sortname : "feeType",
            sortorder : "asc",
            usepager : true,
            title : '',
            useRp : true,
            rp : 10,
            showTableToggleBtn : true,
            height:300
        });

    })
});



