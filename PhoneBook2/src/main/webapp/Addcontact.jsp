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
<form action="addcontact" method="post">
<div class="container-fliud mt-5 d-flex align-items-center justify-content-center">
<div class="card p-4"style="width:400px;">

<h3 class="text-success text-center">ADD CONTACT</h3>
<div class="mb-3">Name:<input type="name" name="name" class="form-control"></div>
<div class="mb-3">Email:<input type="email" name="email" class="form-control"></div>
<div>Phone no:<input type="text" name="phno" class="form-control"></div><br>
About:
<textarea type="text" name="abt" rows="2"class="form-control "> </textarea><br><br>
<div>
<input type="Submit"class="btn btn-primary w-100" value="Add">
</div>
</div>
</div>
</form>
</body>
</html>