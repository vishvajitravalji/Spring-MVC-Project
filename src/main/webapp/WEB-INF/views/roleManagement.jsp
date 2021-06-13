<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Member and Leader Management Page</h1>

            <p class="lead">This is the Member and Leader Management page!</p>
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
                <th>Username</th>
                <th>Password</th>
                <th>Role</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${roles}" var="role">
                <tr>
                    <td>${role.roleName}</td>
                    <td>${role.roleUsername}</td>
                    <td>${role.rolePassword}</td>
                    <td>${role.authority}</td>
                    <td>
                        <a href="<spring:url value="/admin/roleManagement/editRole/${role.roleId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="<spring:url value="/admin/roleManagement/deleteRole/${role.roleId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                    </td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/roleManagement/addRole" />" class="btn btn-primary">Add Member or Leader</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
