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

                <th>Title</th>
                <th>Description</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Status</th>


            </tr>
            </thead>
            <c:forEach items="${projects}" var="project">
                <tr>

                    <td>${project.title}</td>
                    <td>${project.description}</td>
                    <td>${project.starDate}</td>
                    <td>${project.endDate} </td>
                    <td>${project.status}</td>

                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
