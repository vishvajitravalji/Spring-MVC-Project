<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Projects</h1>

            <p class="lead">Checkout all the awesome projects available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">

                <th>Name</th>
                <th>Email</th>
                <th>Username</th>

            </tr>
            </thead>
            <c:forEach items="${customers}" var="customers">
                <tr>
                    <td>${customers.customerName}</td>
                    <td>${customers.customerEmail}</td>
                    <td>${customers.username}</td>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
