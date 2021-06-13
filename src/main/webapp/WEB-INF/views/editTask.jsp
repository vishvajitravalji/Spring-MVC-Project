<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Task</h1>

            <p class="lead">Please update information about task</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/leader/taskManagement/editTask"
                   method="post" commandName="task">
            <form:hidden path="taskId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Title</label>
            <form:input path="taskTitle" id="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="desc">Description</label>
            <form:textarea path="taskDescription" id="desc" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="sDate">Deadline</label>
            <form:input path="taskDeadline" id="sDate" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="eDate">State</label>
            <form:input path="taskState" id="eDate" class="form-control"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/leader/taskManagement" />" class="btn btn-default">Cancel</a>

        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
