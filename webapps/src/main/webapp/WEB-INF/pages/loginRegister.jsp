<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>

<html>

<head>

	<!--defines character encoding for the document -->
	<meta charset="utf-8">
	<title>LOGIN/REGISTER</title>
	<meta name="documentation" content="COOKWISE ACCOUNT REGISTRATION OR LOGIN">
	<meta name="author" content="NURUL_SYUHADA_ABDUL_KADIR_27495124">
	<link rel="stylesheet" type="text/css" href="resources/css/loginRegister.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	<script src="resources/javascript/loginRegister.js" type="text/javascript"></script>
</head>


<body>

	<div class="loginregform">
		
		<ul class="loginregtabs">
			<li id="reg" class="tab act"><a href="#register">REGISTER</a></li>
			<li id="log" class="tab"><a href="#login">LOGIN</a></li>
		</ul>
		
		
		<div class="formContent">
		
			<div id="register">
				<h1>Create a new account</h1>
				<form action="/webapps/register">
					
						<div class="registerInput">
							<label>Username*</label>
							<input type="text" name="username"/>
						</div>
						
		
					
					<div class="registerInput" ><label>Email*</label><input type="text" name="email"/></div>
					<div class="registerInput" >
					      <label>Password*</label>
						  <input type="password" name="password" />
					</div>
					
					<button type="submit" class="createaccbutton">Create account</button>
				</form>
			</div>
			
			<div id="login">
			
				<h1>Login to an existing account</h1>
				
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>
				
				<form name="loginForm" action="<c:url value='/j_spring_security_check' />" method='POST'>
					<div class="registerInput" ><label >Username</label><input type="text" name="username" /></div>
					<div class="registerInput"><label >Password*</label><input type="text"  name="password"/></div>
					<button type="submit" class="loginbutton">Login</button>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
			
			</div>
			
			</div>
		</div>
</body>
</html>