<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Add New User</title>
    <style>
      body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      form {
        background-color: #f2f2f2;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px #888888;
        width: 500px;
        text-align: center;
      }
      input[type="text"],
      input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 5px;
        border: none;
        font-size: 16px;
      }
      input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
      }
    </style>
  </head>
  <body>
    <form method="POST" action='UserHandler' name="frmAddUser">
      <input type="hidden" name="operation" value="insert" />
      <h3>Add New Record</h3>
      <table>
        <tr>
          <td>User ID</td>
          <td><input type="text" name="userid"></td>
        </tr>
        <tr>
          <td>First Name</td>
          <td><input type="text" name="firstName"></td>
        </tr>
        <tr>
          <td>Last Name</td>
          <td><input type="text" name="lastName"></td>
        </tr>
        <tr>
          <td>Education</td>
          <td><input type="text" name="education"></td>
        </tr>
        <tr>
          <td>Country</td>
          <td><input type="text" name="country"></td>
        </tr>
        <tr>
          <td>City</td>
          <td><input type="text" name="city"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Submit"></td>
        </tr>
      </table>
    
    <p>
      <a href="UserHandler?operation=listUser">View-All-Records</a>
    </p>
    </form>
  </body>
</html>
