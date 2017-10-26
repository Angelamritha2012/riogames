<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
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
      
      
                               <li class="active"><li><a href="#"class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus"></span>ADD</a>
                               <ul class="dropdown-menu">
									<li><a href="addproduct">Product</a>
									<li><a href="addcategory">Category</a>
									<li><a href="addsupplier">Supplier</a>
							  </ul>
                               </li>
                                <li><a href="update"><span class="glyphicon glyphicon-pencil"></span>UPDATE</a></li>
                                <li><a href="delete"><span class="glyphicon glyphicon-trash"></span>DELETE</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<form action="addproduct" method="POST">
<h1>Add to Products</h1>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Supplier ID</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--         <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
 -->  <input name="sid" placeholder="Suppiler id" class="form-control" type="text"><br>
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
  <input  name="pname" placeholder="productname" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Product Image</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="pimage" placeholder="ID" class="form-control"  type="file"><br>
    </div>
  </div>
</div>
</div>



<!-- Text input-->
<!--        <div class="form-group">
 -->      
 <div class="container">
  <div class="row">
  <label class="col-md-4 control-label">Product Description</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--         <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
 -->  <input name="pdescrip" placeholder="Description" class="form-control"  type="text"><br>
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
  <input name="pprice" placeholder="price" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">

 -->

<!-- Text input-->

<!-- <div class="form-group">
 --><div class="container">
 
 <div class="row">
  <label class="col-md-4 control-label" >Quantity</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="pquantity" placeholder="quantity" class="form-control"  type="quantity"><br>
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
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <!-- <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add"> -->
<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspADD <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>  
  </div>
</div>
</div>
  
</form>

<!-- Category -->



<form action="addcategory" method="POST">
<h1>Category</h1>


<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Category name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="cname" placeholder="category name" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Description</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="cdesc" placeholder="Description" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<div class="container">

<div class="row">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <!-- <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add"> -->
<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspADD <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>  
  </div>
</div>
</div>

</form>




<!-- Supplier -->



<form action="addsupplier" method="POST">
<h1>Supplier</h1>
<!-- <div class="container">
 <div class="row">
  <label class="col-md-4 control-label">Supplier ID</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="sid" placeholder="Suppiler id" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div> -->

<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label"> Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="name" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Address</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="address" placeholder="address" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Email</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="email" placeholder="Email" class="form-control"  type="email"><br>
    </div>
  </div>
</div>
</div>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label" >Contact</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
<!--   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 -->  <input name="contact" placeholder="contact" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<div class="container">

<div class="row">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <!-- <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add"> -->
<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspADD <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>  
  </div>
</div>
</div>
</form>
</body>
</html>