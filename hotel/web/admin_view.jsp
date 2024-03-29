<%--
  Created by IntelliJ IDEA.
  User: macmini2
  Date: 08/04/2020
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*" %>
<html>
<head>
    <title>Panel admina</title>
</head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/main.css">

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">

            <div class="style padding: 25 px">
                <a class="navbar-brand" href="index.html">Rezerwacje</a>
            </div>

        </div>
    </div>
</nav>

<div class="row form-group"></div>
<div class="row form-group"></div>
<div class="row form-group"></div>
<div class="row form-group"></div>

<hr>
<h1 class="align-content-center">Lista rezerwacji zarejestrowanych na naszej stronie:</h1>
<hr>
<div class="row form-group"></div>
<div class="row form-group"></div>
<div class="row form-group"></div>

<table class="table table-striped">

    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">imie</th>
        <th scope="col">nazwisko</th>
        <th scope="col">email</th>
        <th scope="col">cena</th>
        <th scope="col">data od</th>
        <th scope="col">data do</th>
        <th scope="col">typ</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="tmpRezerwacja" items="${REZERWACJA_LIST}">

        <%-- definiowanie linkow--%>
<%--        <c:url var="updateLink" value="AdminServlet">--%>
<%--            <c:param name="command" value="LOAD"></c:param>--%>
<%--            <c:param name="rezerwacjaID" value="${tmpRezerwacja.id}"></c:param>--%>
<%--        </c:url>--%>

        <c:url var="deleteLink" value="AdminServlet">
            <c:param name="command" value="DELETE"></c:param>
            <c:param name="rezerwacjaID" value="${tmpRezerwacja.id}"></c:param>
        </c:url>


        <tr>
            <th scope="row">${tmpRezerwacja.getId()}</th>
            <td>${tmpRezerwacja.getKlient().getImie()}</td>
            <td>${tmpRezerwacja.getKlient().getNazwisko()}</td>
            <td>${tmpRezerwacja.getKlient().getEmail()}</td>
            <td>${tmpRezerwacja.getCena()}</td>
            <td>${tmpRezerwacja.getDataOd()}</td>
            <td>${tmpRezerwacja.getDataDo()}</td>
            <td>${tmpRezerwacja.getPokoj().getTyp()}</td>
            <td>
<%--            <td><a href="${updateLink}">--%>
<%--                <button type="button" class="btn btn-success">Zmień dane</button>--%>
<%--            </a>--%>
            <a href="${deleteLink}"
               onclick="if(!(confirm('Czy na pewno chcesz usunąć tą pozycję?'))) return false">
                <button type="button" class="btn btn-danger">Usuń</button>
            </a></td>
        </tr>

    </c:forEach>
    </tbody>
</table>

<div class="row form-group"></div>
<div class="row form-group"></div>
<div class="row form-group"></div>

<%--<div class="col-sm-9">--%>
<%--    <p><a class="btn btn-primary btn-info" href="add_rezerwacja_form.jsp" role="button">Dodaj rezerwację</a></p>--%>
<%--</div>--%>

<div class="row form-group"></div>
<div class="row form-group"></div>
<div class="row form-group"></div>

<div class="row">
    <div class="container-fluid">

        <div class="col-sm-9">
            <a href="home.html" class="btn btn-lg btn-primary" role="button" aria-disabled="true">Wróć do strony
                głównej</a>
        </div>
    </div>
</div>