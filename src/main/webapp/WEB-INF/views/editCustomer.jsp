<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit User</h1>

            <p class="lead">Please update information about users</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/registerManagement/editCustomer"
                   method="post" commandName="customer">
            <form:hidden path="customerId" value="${customer.customerId}" />

        <h3>Basic Info</h3>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="customerName" id="name" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="customerEmail" id="email" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="username">Username</label>
            <form:input path="username" id="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:password path="password" id="password" class="form-control"/>
        </div>


        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/registerManagement" />" class="btn btn-default">Cancel</a>
        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
