<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Project Management Page</h1>

            <p class="lead">This is the Project Management page!</p>
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
                <th>Title</th>
                <th>Description</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${projects}" var="project">
                <tr>
                    <td>${project.title}</td>
                    <td>${project.description}</td>
                    <td>${project.starDate}</td>
                    <td>${project.endDate} </td>
                    <td>${project.status}</td>
                    <td>
                        <a href="<spring:url value="/admin/projectManagement/editProject/${project.projectId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="<spring:url value="/admin/projectManagement/deleteProject/${project.projectId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                    </td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/projectManagement/addProject" />" class="btn btn-primary">Add Project</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
