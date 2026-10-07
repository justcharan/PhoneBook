
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg bg-body-tertiary">

    <div class="container-fluid">

        <a class="navbar-brand fw-bold"
           href="<%=request.getContextPath()%>/index.jsp">
            PhoneBook
        </a>

        <button class="navbar-toggler"
                type="button"
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

                    <a class="nav-link active"
                       href="<%=request.getContextPath()%>/index.jsp">
                        Home
                    </a>

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/Addcontact.jsp">
                        Add Contact
                    </a>

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/viewcontact">
                        View Contact
                    </a>

                </div>

            <% } %>


            <div class="ms-auto d-flex align-items-center flex-wrap gap-2">


                <% if (name == null) { %>

                    <span class="text-primary fw-bold text-center me-2">
                        Welcome to PhoneBook App
                    </span>


                    <a href="<%=request.getContextPath()%>/login.jsp"
                       class="btn btn-success">
                        Login
                    </a>


                    <a href="<%=request.getContextPath()%>/Register.jsp"
                       class="btn btn-warning">
                        Register
                    </a>


                <% } else { %>


                    <span class="text-primary fw-bold me-2">
                        Welcome: <%= name %>
                    </span>


                    <a href="<%=request.getContextPath()%>/logout"
                       class="btn btn-warning">
                        Logout
                    </a>


                <% } %>


            </div>

        </div>

    </div>

</nav>