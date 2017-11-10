<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <%@include file="navbar.jsp"%>

<!-- <head>

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
</nav> -->
						<form id="add" action="addproduct" method="POST" role="form" style="display: block;">

<h1>Add to Products</h1>
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
  <label class="col-md-4 control-label"><p align="right">Product name</p></label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="pname" placeholder="productname" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label"><p align="right">Category name</p></label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
 										 <select   class="form-control" name="cat" id="cat" tabindex="1" placeholder="Select Category">
 										 										<!-- <option id="1" value="Puzzles">Puzzles</option>
    																			<option id="2" value="Runner Games">Runner Games</option>
    																			<option id="3" value="Thriller Games">Thriller Games</option>
    																			<option id="4" value="Cookery">Cookery</option> -->
    									 <c:forEach items="${categories}" var="c">
      									<option value="${c.cid}">${c.cname}</option>
										</c:forEach>
    									</select>
    								</div>
    								 </div>
  </div>
</div>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label"><p align="right">Supplier name</p></label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
 										 <select   class="form-control" name="sid" id="sid" tabindex="1" placeholder="Select Category">
 										 										<!-- <option id="1" value="Puzzles">Puzzles</option>
    																			<option id="2" value="Runner Games">Runner Games</option>
    																			<option id="3" value="Thriller Games">Thriller Games</option>
    																			<option id="4" value="Cookery">Cookery</option> -->
    									 <c:forEach items="${supplier}" var="c">
      									<option value="${c.id}">${c.name}</option>
										</c:forEach>
    									</select>
    								</div>
    								 </div>
  </div>
</div>
</div>
<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" ><p align="right">Product Image</p></label> 
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
  <label class="col-md-4 control-label"><p align="right">Product Description</p></label>  
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
  <label class="col-md-4 control-label"><p align="right">Price</p></label>  
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
  <label class="col-md-4 control-label" ><p align="right">Quantity</p></label> 
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
 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  
</form>


<!-- Category -->



						<form id="add" action="addcategory" method="POST" role="form" style="display: block;">

<h1>Category</h1>


<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label"><p align="right">Category name</p></label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="cname" placeholder="category name" class="form-control"  type="text"><br>
    </div>
  </div>
</div>
</div>
 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label" ><p align="right">Description</p></label> 
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



						<form id="add" action="addsupplier" method="POST" role="form" style="display: block;">
 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<h1>Supplier</h1>
<div class="container">
 <div class="row">
  <label class="col-md-4 control-label"><p align="right">Supplier ID</p></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group.4-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="sid" placeholder="Suppiler id" class="form-control" type="text"><br>
    </div>
  </div>
</div>
</div>

<!-- <div class="form-group">
 -->
 <div class="container">
 <div class="row">
  <label class="col-md-4 control-label"><p align="right"> Name</p></label>  
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
  <label class="col-md-4 control-label" ><p align="right">Address</p></label> 
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
  <label class="col-md-4 control-label" ><p align="right">Email</p></label> 
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
  <label class="col-md-4 control-label" ><p align="right">Contact</p></label> 
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