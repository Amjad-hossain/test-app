<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- ==================== BREADCRUMBS / DATETIME ==================== -->
<ul class="breadcrumb">
    <li> <i class="icon-home"></i>
    <c:forEach var="bc" items="${breadcrumb.tree}" varStatus="status">
        <li class="active"><a href="${bc.value}">${bc.name}</a></li>
        <c:if test="${status.index < fn:length(breadcrumb.tree)-1}">
            <span class="divider"><i class="icon-angle-right"></i></span>
        </c:if>
        </li>
    </c:forEach>
</ul>
<!-- ==================== END OF BREADCRUMBS / DATETIME ==================== -->
