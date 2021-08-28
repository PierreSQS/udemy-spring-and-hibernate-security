<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Custom Login Page</title>
  <style>
    .failed {
        color:red;
    }
  </style>
</head>
<body>
  <h3>My Custom Login Page</h3>

  <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
              method="POST">

    <!-- check for login error -->
    <c:if test="${param.error != null}">
        <i class="failed">Sorry either your field names are wrong<br>or username or password are wrong!!!</i>
    </c:if>
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