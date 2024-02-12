<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Crud</title>
<style>

body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
}

.container {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

h1 {
  font-size: 36px;
  margin-bottom: 20px;
}

h2 {
  font-size: 24px;
  margin-bottom: 20px;
}

.buttons-container {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.btn {
  background-color: green;
  color: white;
  padding: 12px 20px;
  border-radius: 4px;
  text-decoration: none;
  font-size: 16px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 20px;
}


</style>


</head>
<body>

<div class="container">
	<h1>Welcome To My Application</h1>
	
	<p>
		<h2>This Is Crud Opration</h2>
		</p>
		
		<div class="buttons-container">
  <a href="user.jsp" class="btn">Add user</a>
  <a href="listUser.jsp" class="btn">User</a>
</div>
</div>

</body>
</html>
