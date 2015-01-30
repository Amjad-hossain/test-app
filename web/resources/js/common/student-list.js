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

    $(function () {

        $("#studentListTable").flexigrid({
            url : './getStudentJSON.html',
            dataType : 'json',
            colModel : [ {
                display : 'Name',
                name : 'name',
                width : 200,
                sortable : true,
                align : 'left'
            }, {
                display : 'Class',
                name : 'code',
                width : 100,
                sortable : true,
                align : 'left'
            }, {
                display : 'Roll No',
                name : 'roleNo',
                width : 100,
                sortable : true,
                align : 'left'
            }, {
                display : 'Father Name',
                name : 'fatherName',
                width : 200,
                sortable : true,
                align : 'left'
            }, {
                display : 'Mother Name',
                name : 'motherName',
                width : 200,
                sortable : true,
                align : 'left'
            }, {
                display : 'date Of Birth',
                name : 'dateOfBirth',
                width : 50,
                sortable : false,
                align : 'center'
            }, {
                display : '',
                name : 'userDeleteButtonHtml',
                width : 'auto',
                sortable : false,
                align : 'center'
            }, {
                display : 'Backend data',
                name : 'id',
                width : 1,
                hide : true,
                align : 'center'
            }],
            searchitems : [ {
                display : 'Control',
                name : 'name'
            }, {
                display : 'Transaction Type',
                name : 'transactionType',
                isdefault : true
            } ],
            sortname : "name",
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



