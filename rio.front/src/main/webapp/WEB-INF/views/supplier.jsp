<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
      
      
          <<li class="active"><a href="#header"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
                                <li><a href="add"><span class="glyphicon glyphicon-plus"></span>ADD</a></li>
                                <li><a href="update"><span class="glyphicon glyphicon-pencil"></span>UPDATE</a></li>
                                <li><a href="delete"><span class="glyphicon glyphicon-trash"></span>DELETE</a></li>
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
<h1>Add to Products</h1>

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
  <label class="col-md-4 control-label" >Product Id</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="Product Id" placeholder="ID" class="form-control"  type="Id"><br>
    </div>
  </div>
</div>
</div>

<!-- Text input-->

<!-- <div class="form-group">
 --><div class="container">
 
 <div class="row">
  <label class="col-md-4 control-label" >Stock</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="stock" placeholder="stock" class="form-control"  type="stock"><br>
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
  <input name="price" placeholder="(639)" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">

 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Supplier ID</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--         <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
 -->  <input name="supplierid" placeholder="(639)" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>

<!-- Select Basic -->


<!-- Button -->
<!-- <div class="form-group"> -->
<div class="container">

<div class="row">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>
</div>


	

</body>
</html>