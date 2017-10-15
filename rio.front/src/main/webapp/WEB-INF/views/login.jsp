<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>


<body>
<section class="section-padding wow fadeInUp delay-02s" id="Login">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="section-title">
                        <h2 class="head-title">LOGIN</h2>
                        <hr class="botm-line">
                        <div class="container">
  <div class="jumbotron">
<h2>Login Form</h2>

<form action="validate" method ="POST">
  
  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
   
    <input type="checkbox" checked="checked"> Remember me
  </div>
  

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="password">Forgot <a href="login">password?</a></span>
  </div>
</form>

         
<input type="submit" name="submit" value ="submit" class="btn btn-submit">
    
	</div>
	<footer>
  <p>@NIIT E-COMMERCE PROJECT 2017</p>

</body>
</html>