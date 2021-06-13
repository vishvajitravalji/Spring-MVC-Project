<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Role</h1>

            <p class="lead">Please update information about Leader and Member Roles</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/roleManagement/editRole"
                   method="post" commandName="role">
            <form:hidden path="roleId" value="${role.roleId}" />


        <h3>Basic Info</h3>
        <div class="form-group">
            <label for="roleName">Name</label>
            <form:input path="roleName" id="roleName" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="roleUsername">Username</label>
            <form:input path="roleUsername" id="roleUsername" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="rolePassword">Password</label>
            <form:input path="rolePassword" id="rolePassword" class="form-control"/>
        </div>


        <div class="form-group">
            <label for="authority">authority</label>
            <label class="checkbox-inline"><form:radiobutton path="authority" id="authority" value="ROLE_LEADER"/> Leader </label>
            <label class="checkbox-inline"><form:radiobutton path="authority" id="authority" value="ROLE_MEMBER"/> Member </label>
        </div>


        <div class="form-group">
            <label for="enabled1">Select</label>
            <label class="checkbox-inline"><form:radiobutton path="enabled" id="enabled1" value="TRUE"/> TRUE </label>
            <label class="checkbox-inline"><form:radiobutton path="enabled" id="enabled1" value="FALSE"/> FALSE </label>
        </div>


        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/roleManagement" />" class="btn btn-default">Cancel</a>
        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
