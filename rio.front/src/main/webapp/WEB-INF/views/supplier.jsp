<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<html>
<head>
 <%@include file="header.jsp"%>


    <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
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
</nav> -->
<!-- <html>
<head>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    Brand and toggle get grouped for better mobile display
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">RIO</a>
    </div>

    Collect the nav links, forms, and other content for toggling
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
        <li role="separator" class="divider"></li>
                                            <li><a href="update"><span class="glyphicon glyphicon-pencil"></span>UPDATE</a></li>
            
            <li role="separator" class="divider"></li>
                                <li><a href="delete"><span class="glyphicon glyphicon-trash"></span>DELETE</a></li>
   
          <a href="add" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADD <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="addproduct">PRODUCT</a></li>
            <li><a href="addcategory">CATEGORY</a></li>
            <li><a href="addsupplier">SUPPLIER</a></li>
                   </ul>
                  <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
</nav>
</head>
</html> -->
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
					<a href="/admin/updateproduct?id=${p.pid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="/admin/deleteproduct?id=${p.pid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
			</div>
		</div>		
		</c:forEach>
		
	</div>
		
<section id="products" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">CATEGORY</h2>
  
<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-2">
					Id
				</div>
				<div class="col-md-3">
					 Category Name
				</div>
				<div class="col-md-3">
					Description
				</div>
				<!-- <div class="col-md-2">
					Quantity
				</div>
				<div class="col-md-2">				
					Price
				</div> -->
				<div class="col-md-2">
					Action
				</div>
			</div>
		</div>
		
						<c:forEach items="${categories}" var="cat">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-2">
				<br>
				${cat.cid}
				</div>
				<div class="col-md-3">
				<br>
					${cat.cname}
				</div>
				<div class="col-md-3">
				<br>
					${cat.cdesc}
				</div>
				<div class="col-md-2">
				<br>
					<a href="/admin/updatecategory?id=${cat.cid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="/admin/deletecategory?id=${cat.cid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
		
	</div>
		</div>
		</div>
		</div>
</div>
<section id="products" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">SUPPLIER</h2>
  
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
					Email
				</div>
				<div class="col-md-2">
					Address
				</div>
				<div class="col-md-2">
					Contact
				</div>
				
				<div class="col-md-2">
					Action
				</div>
			</div>
		</div>
		
						<c:forEach items="${suppliers}" var="sup">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-2">
				<br>
				${sup.id}
				</div>
				<div class="col-md-2">
				<br>
					${sup.name}
				</div>
				<div class="col-md-2">
				<br>
					${sup.email}
				</div>
				<div class="col-md-2">
				<br>
					${sup.address}
				</div>
				<div class="col-md-2">
				<br>
					${sup.contact}
				</div>
				<div class="col-md-2">
				<br>
					<a href="/admin/updatesupplier?id=${sup.id}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="/admin/deletesupplier?id=${sup.id}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
		
	</div>
		</div>
		</div>
		</div>
</body>
</html>