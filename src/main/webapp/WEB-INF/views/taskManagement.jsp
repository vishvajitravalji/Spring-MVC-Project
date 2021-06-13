<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Task Management Page</h1>

            <p class="lead">This is the Task Management page!</p>
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
                <th>Deadline</th>
                <th>State</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${tasks}" var="task">
                <tr>
                    <td>${task.taskTitle}</td>
                    <td>${task.taskDescription}</td>
                    <td>${task.taskDeadline}</td>
                    <td>${task.taskState}</td>

                    <td>
                        <a href="<spring:url value="/leader/taskManagement/editTask/${task.taskId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                        <a href="<spring:url value="/leader/taskManagement/deleteTask/${task.taskId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                    </td>

                </tr>
            </c:forEach>

            
        </table>

        <a href="<spring:url value="/leader/taskManagement/addTask" />" class="btn btn-primary">Add Task</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
