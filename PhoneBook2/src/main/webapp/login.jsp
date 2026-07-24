<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>
<form action="login" method="post">
<div class="container-fliud mt-5 d-flex align-items-center justify-content-center">
<div class="card p-4"style="width:400px;">

<h3 class="text-success text-center">Login page</h3>

<div class="mb-3">Email:<input type="email
" name="email" class="form-control"></div>
<div>Password:<input type="password" name="password" class="form-control"></div><br>
<div>
<input type="Submit"class="btn btn-primary w-100" value="login">
</div>
</div>
</div>
</form>
</body>
</html>