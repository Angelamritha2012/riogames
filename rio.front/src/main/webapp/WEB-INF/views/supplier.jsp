<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>

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
      
      
                               <li ><li><a href="#"class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-plus"></span>ADD</a>
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
<section id="products" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">PRODUCTS</h2>
  
<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-2">
					Id
				</div>
				<div class="col-md-2">
					Name
				</div>
				<div class="col-md-2">
					Description
				</div>
				<div class="col-md-2">
					Quantity
				</div>
				<div class="col-md-2">				
					Price
				</div>
				<div class="col-md-2">
					Action
				</div>
			</div>
		</div>
		<c:forEach items="${products}" var="p">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-2">
					${p.pid}
				</div>
				<div class="col-md-2">
					${p.pname}
				</div>
				<div class="col-md-2">
					${p.pdescrip}
				</div>
				<div class="col-md-2">
					${p.pquantity}
				</div>
				<div class="col-md-2">
					${p.pprice}
				</div>
				<div class="col-md-2">
					<a href="edit?id=${p.pid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="delete?id=${p.pid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
			</div>
		</div>		
		</c:forEach>
		
	</div>
		

</body>
</html>