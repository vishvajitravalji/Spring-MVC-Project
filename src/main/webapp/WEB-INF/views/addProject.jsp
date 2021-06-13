<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Project</h1>

            <p class="lead">Fill the below information about project</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/projectManagement/addProject" method="post"
                   commandName="project">

        <div class="form-group">
            <label for="name">Title</label>
            <form:input path="title" id="name" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="desc">Description</label>
            <form:textarea path="description" id="desc" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="sDate">Start Date</label>
            <form:input path="starDate" id="sDate" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="eDate">End Date</label>
            <form:input path="endDate" id="eDate" class="form-control"/>
        </div>


        <div class="form-group">
            <label for="statuses">Status</label>
            <form:input path="status" id="statuses" class="form-control"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/projectManagement" />" class="btn btn-default">Cancel</a>
        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
