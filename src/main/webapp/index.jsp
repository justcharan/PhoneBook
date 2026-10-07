<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<style>
body{
background-position:center ;

background-size:cover;
background-repeat:no-repeat;
}
section{
margin-top:200px;
margin-bottom:200px;
height:5vh;
}

</style>
</head>

<body background="<%=request.getContextPath()%>/img/main.png">
  <header  ><%@include file="component/nav.jsp" %> </header> 
  <section>
   
    
 
     </section>
     <footer >
     <%@include file="component/footer.jsp" %>
     </footer>
</body>
</html>