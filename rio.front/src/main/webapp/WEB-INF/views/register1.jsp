<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="header.jsp"%>
<body>
<form action="register1" method ="POST">

<div class="container">
            <div class="container text-center">

  <div class="col-md-6 "><h2>REGISTRATION   FORM</h2></div>  
  <div class="col-md-4 inputgroupContainer">
  <div class="input-group">
    </div>
  </div>
  </div>
</div>
<div class="form-group">
            <div class="container text-center">

  <label class="col-md-4 control-label">Username</label>  
  <div class="col-md-4 inputgroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="Username" class="form-control"  type="text">
    </div>
  </div>
</div>
</div>



<div class="form-group">
            <div class="container text-center">

  <label class="col-md-4 control-label" >Password</label> 
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

  <label class="col-md-4 control-label" >Confirm Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="confirmpassword" placeholder="Confirm Password" class="form-control"  type="password">
    </div>
  </div>
</div>
</div>


       <div class="form-groupr">
                   <div class="container text-center">
       
  <label class="col-md-4 control-label">E-Mail</label>  
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

  <label class="col-md-4 control-label">Contact </label>  
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

  <label class="col-md-4 control-label">Address</label>  
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
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>

</fieldset>
</form>

</div>
    </div>
        </div>
        </section>
	<%@include file="footer.jsp"%>
	
</body>
</html>