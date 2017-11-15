<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>
<body>
<form action="register1" method="POST">
		 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<div class="container">
            <div class="container text-center">

  <div class="col-md-6 "><h2><center><p align="right">REGISTRATION   FORM</p></center></h2></div>  
  <div class="col-md-4 inputgroupContainer">
  <div class="input-group">
    </div>
  </div>
  </div>
</div>
<br>
<br>
<div class="form-group">
            <div class="container text-center">

  <label class="col-md-4 control-label"><p align="right">Username</p></label>  
  <div class="col-md-4 inputgroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="username" placeholder="Username" class="form-control"  type="text">
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
            <div class="container text-center">

  <label class="col-md-4 control-label" ><p align="right">Confirm Password</p></label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="confirmpassword" placeholder="Confirm Password" class="form-control"  type="password">
    </div>
  </div>
</div>
</div>


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

  <label class="col-md-4 control-label"><p align="right">Contact </p></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="contact" placeholder="(639)" class="form-control" type="text">
    </div>
  </div>
</div>
</div>
<div class="form-group">
            <div class="container text-center">

  <label class="col-md-4 control-label"><p align="right">Address</p></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-address"></i></span>
  <input name="address" placeholder="" class="form-control" type="text">
    </div>
  </div>
</div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input type="submit" class="btn btn-warning"  name="butSubmit" value="Register">

  </div>
</div>

</fieldset>
</form>

</div>
    </div>
        </div>
        </section>
        
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
	
</body>
</html>