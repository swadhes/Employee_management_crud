<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="net.tejas.bean.UserBean"%>
<%@ page import="net.tejas.dao.UserDao"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
<style>
body {
  display: flex;
  align-items: center;
  height: 100vh;
}

form {
  margin: auto;
}
table {
	width: 400px;
	margin: auto;
	border: 1px solid #333;
	border-collapse: collapse;
}
td {
padding: 10px;
border: 1px solid #333;
}

input[type="text"] {
width: 90%;
padding: 5px;
font-size: 16px;
}

input[type="submit"] {
background-color: #4CAF50;
color: white;
padding: 12px 20px;
border: none;
cursor: pointer;
float: right;
}
</style>

</head>
<body>
<%
	UserBean user = new UserBean();
%>
<%
	UserDao dao = new UserDao();
%>
<form method="POST" action='UserHandler' name="frmEditUser">
<input type="hidden" name="operation" value="edit" /> <%
String uid = request.getParameter("userId");
if (!((uid) == null)) {
int id = Integer.parseInt(uid);
user = dao.getUserById(id);
%>

<table>
	<tr>
		<td>User ID</td>
		<td><input type="text" name="userId" readonly="readonly"
			value="<%=user.getId()%>"></td>
	</tr>
	<tr>
		<td>First Name</td>
		<td><input type="text" name="firstName" value="<%=user.getfName()%>"/></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lastName" value="<%=user.getlName()%>"/></td>
	</tr>
	<tr>
		<td>Education</td>
		<td><input type="text" name="education" value="<%=user.geteducation()%>"/></td>
	</tr>
	<tr>
		<td>Country</td>
		<td><input type="text" name="country" value="<%=user.getcountry()%>"/></td>
	</tr>
	<tr>
		<td>City</td>
		<td><input type="text" name="city" value="<%=user.getcity()%>"/></td>
	</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Update" /></td>
</tr>
</table>
<%
	} else
		out.println("ID Not Found");
%>
</form>
</body>
</html>


