<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PhoneBook</title>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">

        <a class="navbar-brand" href="index.jsp">PhoneBook</a>

        <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup"
            aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <%
            String name = (String) session.getAttribute("name");
        %>

        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

            <% if (name != null) { %>

                <div class="navbar-nav">
                    <a class="nav-link active" href="index.jsp">Home</a>
                    <a class="nav-link" href="Addcontact.jsp">Add Contact</a>
                    <a class="nav-link" href="viewcontact">View Contact</a>
                </div>

            <% } %>

            <div class="ms-auto">

                <% if (name == null) { %>

                    <a href="<%=request.getContextPath()%>/login.jsp"
                       class="btn btn-success me-2">Login</a>

                    <a href="<%=request.getContextPath()%>/Register.jsp"
                       class="btn btn-warning">Register</a>

                <% } else { %>

                    <span class="me-2 text-primary">
                        Welcome: <%= name %>
                    </span>

                    <a href="logout" class="btn btn-warning">Logout</a>

                <% } %>

            </div>

        </div>

    </div>
</nav>

</body>
</html>