<%-- 
    Document   : Signup.jsp
    Created on : 5 Nov, 2024, 7:11:17 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

<body>
    <form action="SignUpServlet" method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="hidden" name="role" value="Employee">
        <button type="submit">Sign Up</button>
    </form>
</body>

</html>
