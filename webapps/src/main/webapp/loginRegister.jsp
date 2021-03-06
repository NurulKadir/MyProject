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
				<form action="/webapp/register">
					<div class="firstRowregFormTitle">
					
						<div class="registerInput">
							<label>First Name*</label>
							<input type="text" name="firstName"/>
						</div>
						<div class="registerInput" >
						    <label>Last Name*</label>
						    <input type="text" name="lastName"/>
						</div>
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
				<form action="/" method="post">
					<div class="registerInput"><label>Email*</label><input type="text" /></div>
					<div class="registerInput"><label>Password*</label><input type="text"  /></div>
					<button type="submit" class="loginbutton">Login</button>
				</form>
				
			</div>
		</div>
	</div>

</body>
</html>