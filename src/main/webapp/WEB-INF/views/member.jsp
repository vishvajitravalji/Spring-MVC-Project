

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Member page</h1>

            <p class="lead">This is the Member page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} |
            <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
        </h2>
        </c:if>

        <h3>
            <a href="<c:url value="/member/taskManagement1" />" >About Task</a>
        </h3>
        <p>Here you can view, check and modify the Task information!</p>

        <h3>
            <a href="<c:url value="/member/memberManagement1" />" >About Member</a>
        </h3>
        <p>Here you can view, check and modify the Task information!</p>


    <%@include file="/WEB-INF/views/template/footer.jsp" %>

