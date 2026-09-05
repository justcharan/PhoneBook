<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.util.*,p1.Contactbean" %>
    <% List<Contactbean>data=
    (List<Contactbean>)request.getAttribute("contact");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>

</head>
<body>
<h2 class="text-center text-primary">Contact list</h2>
<table class="table table-bordered table-striped">
<thead class="table-dark">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>PHONE NO</th>
<th>ABOUT</th>
<th>ACTION</th>
</tr>
</thead>
<tbody>
<% for(Contactbean c: data){ %>
<tr>
<td><%=c.getId() %></td>
<td><%=c.getName() %></td>
<td><%=c.getEmail() %></td>
<td><%=c.getPhno() %></td>
<td><%=c.getAbt() %></td>

<td>
<a href="editcontact?id=<%=c.getId()%>" class="btn btn-primary">Edit Contact</a>
<a href="deletecontact?id=<%=c.getId()%>"class="btn btn-warning"
 onclick="return confirm('Are you sure you want to delete this contact?');">Delete Contact</a>
</td>


</tr>




<%} %>


</tbody>
</table>

</body>
</html>