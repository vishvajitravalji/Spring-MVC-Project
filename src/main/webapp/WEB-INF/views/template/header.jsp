<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>My Music Store</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel2.css" />" rel="stylesheet">

</head>


<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" /> ">Home</a></li>
                        <li><a href="<c:url value="/projectList"/>">Projects</a></li>
                        <li><a href="<c:url value="/registerList"/>">Users</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}" >
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
                        </c:if>

                        <c:if test="${not empty pageContext.request.userPrincipal}">
                            <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                                <li><a href="<c:url value="/admin/" />">Admin</a></li>
                            </c:if>
                        </c:if>

                        <c:if test="${not empty pageContext.request.userPrincipal}">
                            <c:if test="${pageContext.request.isUserInRole('ROLE_LEADER')}">
                                <li><a href="<c:url value="/leader/" />">Leader</a></li>
                            </c:if>
                        </c:if>

                        <c:if test="${not empty pageContext.request.userPrincipal}">
                            <c:if test="${pageContext.request.isUserInRole('ROLE_MEMBER')}">
                                <li><a href="<c:url value="/member" />">Member</a></li>
                            </c:if>
                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}" >
                        <li><a href="<c:url value="/login/" />">Login</a></li>
                        <li><a href="<c:url value="/admin/registerManagement/registerCustomer" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

