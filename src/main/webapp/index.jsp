
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>PhoneBook App</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
crossorigin="anonymous"></script>

<style>

body {
    margin: 0;
    min-height: 100vh;
    background-image: url("<%=request.getContextPath()%>/img/main.png");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}

/* Page */

.page-overlay {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* Main Section */

.hero {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 50px 15px;
}

.hero-content {
    max-width: 750px;
    color: white;
}

.hero-title {
    font-size: clamp(2rem, 5vw, 3.5rem);
    font-weight: 700;
    margin-bottom: 20px;
}

.hero-text {
    font-size: clamp(1rem, 2.5vw, 1.3rem);
    margin-bottom: 30px;
}

.btn-custom {
    padding: 12px 28px;
    font-weight: 600;
    border-radius: 8px;
    margin: 5px;
}

/* Footer */

footer {
    margin-top: auto;
}

</style>

</head>

<body>

<div class="page-overlay">

    <!-- Navbar -->

    <header>
        <%@ include file="component/nav.jsp" %>
    </header>


    <!-- Main Section -->

    <section class="hero">

        <div class="hero-content">

            <p class="hero-text text-info  shadow p-2 text-bold">
                Manage your contacts easily, securely and efficiently.
            </p>

        </div>

    </section>


    <!-- Footer -->

    <footer>
        <%@ include file="component/footer.jsp" %>
    </footer>

</div>

</body>
</html>
```