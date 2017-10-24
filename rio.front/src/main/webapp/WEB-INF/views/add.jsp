<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">RIO</a>
    </div>
    <ul class="nav navbar-nav">
      
      
          <<li class="active">
                                <li><a href="supplier"><!-- <span class="glyphicon glyphicon-trash"></span>-->Back</a></li>
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<form action="add" method="POST">
<h1>Add to Products</h1>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Supplier ID</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--         <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
 -->  <input name="supplierid" placeholder="Suppiler id" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>

<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Product name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="Product name" placeholder="productname" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>

<!-- Text input-->

<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Image</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="Product Id" placeholder="ID" class="form-control"  type="file"><br>
    </div>
  </div>
</div>
</div>

<!-- Text input-->

<!-- <div class="form-group">
 --><div class="container">
 
 <div class="row">
  <label class="col-md-4 control-label" >Quantity</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="quantity" placeholder="quantity" class="form-control"  type="quantity"><br>
    </div>
  </div>
</div>
</div>

<!-- Text input-->
<!--        <div class="form-group">
 -->      
 <div class="container">
  <div class="row">
  <label class="col-md-4 control-label">Description</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--         <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
 -->  <input name="description" placeholder="Description" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>


<!-- Text input-->
       
<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Price</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
  <input name="price" placeholder="price" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">

 -->
 

<!-- Select Basic -->


<!-- Button -->
<!-- <div class="form-group"> -->
<div class="container">

<div class="row">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add">
  </div>
</div>
</div>
  
</form>

</body>
</html>