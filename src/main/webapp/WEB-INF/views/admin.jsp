

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} |
            <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
        </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/admin/projectManagement" />" >Project Management</a>
        </h3>
        <p>Here you can view, check and modify the Project information!</p>

        <h3>
            <a href="<c:url value="/admin/registerManagement" />" >User Management</a>
        </h3>
        <p>Here you can view, check and modify the User's information!</p>

        <h3>
            <a href="<c:url value="/admin/roleManagement" />" >Leader and Member Management</a>
        </h3>
        <p>Here you can view, check and modify the Leader and Member information!</p>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

