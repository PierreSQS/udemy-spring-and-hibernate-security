<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Custom Login Page</title>
</head>
<body>
  <h3>My Custom Login Page</h3>

  <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
              method="POST">
    <p>
      User name: <input type="text" name="username"/>
    </p>

    <p>
      Password: <input type="text" name="password"/>
    </p>

    <input type="submit" name="Login">

  </form:form>

</body>
</html>