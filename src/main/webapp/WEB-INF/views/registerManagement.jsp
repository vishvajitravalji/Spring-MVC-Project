<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>User Management Page</h1>

            <p class="lead">This is the User Management page!</p>
        </div>


        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} |
            <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
        </h2>
        </c:if>


        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Username</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${customers}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.username}</td>
                    <td>
                        <a href="<spring:url value="/admin/registerManagement/editCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="<spring:url value="/admin/registerManagement/deleteCustomer/${customer.customerId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                    </td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/registerManagement/registerCustomer" />" class="btn btn-primary">Add User</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
