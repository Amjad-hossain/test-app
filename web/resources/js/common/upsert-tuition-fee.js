/**
 * Created by habib on 1/27/15.
 */

$(document).ready(function() {

    $('.submitBtn').click(function(){
        $('#tuitionFeeForm').parsley().destroy();
    });

    var feeType = '<td><select data-required="true"  class="span10 parsley-validated">'+$("#feeTypeSelect").html()+'</select></td>';
    var amount = '<td><input data-required="true" data-type="number" type="text" name="" class="span10 parsley-validated amount"></td>';
    var effDate = '<td><input data-type="dateIso" type="text" name="" class="span10 parsley-validated effDate"></td>';
    var addIcon = '<td><img class="addIcon" src="../resources/images/Add.png"></td>';
    var crossIcon = '<td><img class="crossIcon" src="../resources/images/cross.png"></td>';

    var trObj = $('<tr>'+feeType+amount+effDate+addIcon+'</tr>');

    $(".feeTypeTable").find('tbody').append(trObj);
    $(trObj).find('input.effDate').datepicker({ format: globalDateFormat});
    $("#standard").attr("data-required","true");
    $('#tuitionFeeForm').parsley({});

    $(document).on('click','.crossIcon',function(){
        console.log("SMNLOG:I am here");
        $(this).closest('tr').remove();
    });

    $(document).on('click','.addIcon',function(){

            // add validation
        $('#tuitionFeeForm').parsley();

        if($('#tuitionFeeForm').parsley().validate()){
            var rowNo = $(this).closest('tr').index();
            var standardId = $("#standard").val();

            var feeTypeStr = $(this).closest('tr').find('select').find('option:selected').text();
            var amountValue = $(this).closest('tr').find('input.amount').val();
            var effDate = $(this).closest('tr').find('input.effDate').val();

            var feeType = '<td><input type="text" name="tuitionFeeList['+rowNo+'].standard.id" value="'+standardId+'" style="display:none;"><input type="text" name="tuitionFeeList['+rowNo+'].feeType" value="'+feeTypeStr+'" style="display:none;">'+feeTypeStr+'</td>';
            var amount = '<td><input type="text" name="tuitionFeeList['+rowNo+'].amount" value="'+amountValue+'" style="display:none;">'+amountValue+'</td>';
            var effDate = '<td><input type="text" name="tuitionFeeList['+rowNo+'].effectiveDate" value="'+effDate+'" style="display:none;">'+effDate+'</td>';

            var trObj = $('<tr>'+feeType+amount+effDate+crossIcon+'</tr>');
            $(trObj).insertBefore($(".feeTypeTable").find('tbody').find('tr:last'));

            // disabled validation
            $('#tuitionFeeForm').parsley().destroy();

            // Reset the values

            $(this).closest('tr').find('select').val("0");
            $(this).closest('tr').find('input.amount').val("");
            $(this).closest('tr').find('input.effDate').val("");



        }else{
            console.log("SMNLOG:Validation failed");
        }
    });

});

