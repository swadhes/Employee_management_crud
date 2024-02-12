<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="net.tejas.bean.UserBean"%>
<%@ page import="net.tejas.dao.UserDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User</title>

<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

h1 {
  text-align: center;
  margin: 30px 0;
}

.table {
  width: 80%;
  margin: 0 auto;
  text-align: center;
  border-collapse: collapse;
}

.table th {
  background-color: #ddd;
  border: 1px solid #000;
  padding: 8px;
}

.table th, .table td {
  padding: 8px;
  border: 1px solid #000;
}

.table td a {
  text-decoration: none;
  color: #000;
  display: inline-block;
  padding: 8px 16px;
  border: 1px solid #000;
  margin-right: 25px;
  background-color: #ddd;
  border-radius: 4px;
}

.table td a:hover {
  color: #fff;
  background-color: #000;
}

input[type="button"] {
  display: block;
  margin: 30px auto;
  padding: 10px 20px;
  border: 1px solid #000;
  background-color: #ddd;
  border-radius: 4px;
  cursor: pointer;
}
</style>

</head>
<body>

<%
	
	UserDao dao = new UserDao();
	List<UserBean> userList = dao.getAllUsers();

%>
<h1>All User</h1>
<table class="table">
	<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Education</th>
		<th>Country</th>
		<th>City</th>
		<th>Action</th>
	</tr>
	<% for (UserBean user : userList) { %>
	<tr>
		<td><%=user.getId()%></td>
		<td><%=user.getfName()%></td>
		<td><%=user.getlName()%></td>
		<td><%=user.geteducation()%></td>
		<td><%=user.getcountry()%></td>
		<td><%=user.getcity()%></td>
		  <td><a href="UserHandler?operation=editform&userId=<%=user.getId()%>">Update</a>
		<a href="UserHandler?operation=delete&userId=<%=user.getId()%>">Delete</a></td>
	</tr>
	<%
	}
	%>
</table>
<input type="button" value="Add User" onclick="window.location.href='user.jsp'" />
</body>
</html>
