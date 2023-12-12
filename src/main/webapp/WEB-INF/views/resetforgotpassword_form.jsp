<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <style>
        label {
            display: inline-block;
            width: 150px;
            margin: 5px;
            text-align: left;
        }

        input[type=email] {
            width: 200px;
        }

        button {
            padding: 10px;
            margin: 10px;
        }
    </style>
</head>
<body>
<div align="center">
    <h2>Forgot Password</h2>
    <form:form action="" method="post" modelAttribute="user">

        <form:label path="username">Username:</form:label>
        <form:input path="username"/><br/>
        <label for="newpassword">New Password:</label>
        <input type="password" name="newpassword" id="newpassword" /><br/>
        <br/>
        <button type="submit">Reset Password</button>
    </form:form>
    <br/>
    <a href='/login'>Back to Login</a>
</div>
<script type="text/javascript">
    // JavaScript code to set the form action based on the id
    var id = "${id}";  // Access the id from the model
    document.getElementById("resetForm").action = "/resetpassword/" + id;
</script>
</body>
</html>