<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<style>
.back-img{
background-image:url('<%=request.getContextPath()%>/img/main.png');
background-size:cover;
background-position:center;
width:100%;
height:500px;
}
</style>
</head>

<body>
  <%@include file="component/nav.jsp" %>  
     <div class="back-img container-fluid d-flex justify-content-center align-items-center">
     <h1 class="text-danger text-center fw-bold">Welcome to Phonebook App</h1>
     </div>
     <%@include file="component/footer.jsp" %>
</body>
</html>