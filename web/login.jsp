<%-- 
    Document   : login
    Created on : Aug 3, 2020, 6:53:51 PM
    Author     : Lenovo
--%>

<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%  String email=null;     
    Cookie c[]=request.getCookies();
    for(int i=0;i<c.length;i++){
     if(c[i].getName().equals("user")){
         email=c[i].getValue();
         break;
     }
 }
  
 if(email!=null&&session.getAttribute(email)!=null){
       response.sendRedirect("index2.jsp");
   }
   else{
       %><!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Login</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Open+Sans:300,400,600,700"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"], urls: ['assets/css/fonts.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>
	
	<!-- CSS Files -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/azzara.min.css">
</head>
<body class="login">
	<div class="wrapper wrapper-login">
		<div class="container container-login animated fadeIn">
			<h3 class="text-center">Sign In To Admin</h3>
                        <form method="post" action="logincheck.jsp">
			<div class="login-form">
                                        <%
               if(email!=null){
               out.println(email);
               out.println("<br>");
               }
               else{
                   %>
				<div class="form-group form-floating-label">
					<input  name="email" type="email" class="form-control input-border-bottom" required>
					<label  class="placeholder">Email</label>
				</div>
                                <%
                                 }
                                
                                %>
				<div class="form-group form-floating-label">
					<input  name="pass" type="password" class="form-control input-border-bottom" required>
					<label  class="placeholder">Password</label>
					<div class="show-password">
						<i class="flaticon-interface"></i>
					</div>
				</div>
				<div class="row form-sub m-0">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="rememberme">
						<label class="custom-control-label" for="rememberme">Remember Me</label>
					</div>
					
					<a href="#" class="link float-right">Forget Password ?</a>
				</div>
				<div class="form-action mb-3">
                                    <button type="submit" class="btn btn-primary btn-rounded btn-login">Sign In</button>
				</div>
				<div class="login-account">
					<span class="msg">Don't have an account yet ?</span>
					<a onClick="myFunction();" id="show-signup" class="link"><button>Sign Up</button></a>
				</div>
                               
			</div>
                                 </form>
		</div>

		<div  id="signup" class="container container-signup animated fadeIn">
			<h3 class="text-center">Sign Up</h3>
			<div class="login-form">
                            <form method="post" action="registercheck.jsp">
				<div class="form-group form-floating-label">
					<input   name="name" type="text" class="form-control input-border-bottom" required>
					<label  class="placeholder">Fullname</label>
				</div>
				<div class="form-group form-floating-label">
					<input   name="email" type="email" class="form-control input-border-bottom" required>
					<label  class="placeholder">Email</label>
				</div>
				<div class="form-group form-floating-label">
					<input   name="password" type="password" class="form-control input-border-bottom" required>
					<label  class="placeholder">Password</label>
					<div class="show-password">
						<i class="flaticon-interface"></i>
					</div>
				</div>
				<div class="form-group form-floating-label">
					<input   name="cpassword" type="password" class="form-control input-border-bottom" required>
					<label  class="placeholder">Confirm Password</label>
					<div class="show-password">
						<i class="flaticon-interface"></i>
					</div>
				</div>
				<div class="row form-sub m-0">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" name="agree" id="agree">
						<label class="custom-control-label" for="agree">I Agree the terms and conditions.</label>
					</div>
				</div>
				<div class="form-action">
					<a href="login.jsp" id="show-signin" class="btn btn-danger btn-rounded btn-login mr-3">Cancel</a>
                                        <button type="submit" class="btn btn-primary btn-rounded btn-login">Sign Up</button>
				</div>
			</form>
                        
                        </div>
		</div>
	</div>
    <script>
function myFunction() {
  document.getElementById("signup").HTML();
}
</script>

	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/ready.js"></script>
</body>
</html>
<%
    }
%>
