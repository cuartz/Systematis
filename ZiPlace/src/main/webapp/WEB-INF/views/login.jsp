<%-- 
    Document   : login
    Created on : May 14, 2015, 5:36:17 PM
    Author     : cuartz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<!--<c:url value="/login" var="loginUrl"/>-->
<form action="${loginUrl}" method="post">       
	<c:if test="${param.error != null}">        
		<p>
			Invalid username and password.
		</p>
	</c:if>
	<c:if test="${param.logout != null}">       
		<p>
			You have been logged out.
		</p>
	</c:if>
	<p>
		<label for="username">Username</label>
		<input type="text" id="username" name="username"/>	
	</p>
	<p>
		<label for="password">Password</label>
		<input type="password" id="password" name="password"/>	
	</p>
	<input type="hidden"                        
		name="${_csrf.parameterName}"
		value="${_csrf.token}"/>
	<button type="submit" class="btn">Log in</button>
</form>
    </body>
</html>
