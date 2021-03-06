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

<title></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">
            <div class="customFlexigridCss">
                <table id="userTableId">
                </table>
            </div>
        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->


<script>

    $(function () {

        $("#userTableId").flexigrid({
            url : './getUserJSON.html',
            dataType : 'json',
            colModel : [ {
                display : 'Name',
                name : 'userName',
                width : 'auto',
                sortable : true,
                align : 'left'
            }, {
                display : 'Role',
                name : 'role',
                width : 'auto',
                sortable : true,
                align : 'left'
            }, {
                display : 'Active',
                name : 'userActiveCheckBoxHtml',
                width : 'auto',
                sortable : false,
                align : 'center'
            }, {
                display : '',
                name : 'userEditButtonHtml',
                width : 'auto',
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
            buttons : [{ name: '#userTableId', bclass: 'ADD'}],
            searchitems : [ {
                display : 'Control',
                name : 'name'
            }, {
                display : 'Transaction Type',
                name : 'transactionType',
                isdefault : true
            } ],
            sortname : "user_name",
            sortorder : "asc",
            usepager : true,
            title : '',
            useRp : true,
            rp : 10,
            showTableToggleBtn : true,
            height:300
           /* onSuccess: function () {
                addGrid($('#userTableId'), this);  //PATCH to get the grids to be responseive
            },
            getGridClass: function (g) { //PATCH to get the grids to be responseive
                this.g = g; //Is this the only way to expose the grid class ?
                return g;
            }*/
        });

    })


</script>
