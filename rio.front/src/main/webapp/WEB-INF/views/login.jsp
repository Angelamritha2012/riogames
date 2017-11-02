<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>


<body>
<section class="section-padding wow fadeInUp delay-02s" id="Login">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="section-title">
                        <h2 class="head-title">LOGIN</h2>
                        <hr class="botm-line">
                        <div class="container">
  <div class="jumbotron">
<h2>Login Form</h2>

<form action="validate" method ="POST">
  
  
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required><br><br>
        
    <button type="submit">Login</button>
   
    <input type="checkbox" checked="checked"> Remember me
  </div>
  

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="password">Forgot <a href="login">password?</a></span>
  </div>
  </div>
  </div>
  </div>
  </div>
  </div>
  </section>
  
</form>

          --%>
          <!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@include file="header.jsp"%>
  
<!-- </head>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}



.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>

<center>SIGN IN</center>

 <center> <b> <u> <i>SIGN IN </i> </u> </b> </center> </body>

<form action="validate" method ="POST">
  

  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Signin</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <input type="submit" class="cancelbtn">Cancel>
    <span class="password">Forgot <a href="failure">password?</a></span>
  </div>
</form --%>> -->
<div class="container">
            <div class="container text-center">

  <div class="col-md-6 "><h2><p align="right">SIGN IN</p></h2></div>  
  <div class="col-md-4 inputgroupContainer">
  <div class="input-group">
    </div>
  </div>
  </div>
</div>
<form action="validate" method ="POST">

<div class="form-group">
                   <div class="container text-center">
       
  <label class="col-md-4 control-label"><p align="right">E-Mail</p></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
    </div>
  </div>
</div>
</div>


<div class="form-group">
            <div class="container text-center">

  <label class="col-md-4 control-label" ><p align="right">Password</p></label> 
    <div class="col-md-4 inputgroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="password" placeholder="Password" class="form-control"  type="password">
    </div>
  </div>
</div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>
</body>
</html>
          

    
	
	<footer>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
  <p>@NIIT E-COMMERCE PROJECT 2017</p>

</body>
</html>