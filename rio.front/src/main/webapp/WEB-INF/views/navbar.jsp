	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false" %>

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
      
      
                                <!-- <li><a href="update"><span class="glyphicon glyphicon-pencil"></span>UPDATE</a></li>
                                <li><a href="delete"><span class="glyphicon glyphicon-trash"></span>DELETE</a></li> -->
      
  
    <ul class="nav navbar-nav navbar-right">
<%--           <li><a href="#"><span class="glyphicon glyphicon-home"></span> HOME</a></li>
<!--           <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> SIGN IN</a></li>
 -->          
             
    														
						<c:choose>
						
							<c:when test="${sessionScope['email'] eq null}">
							<li><a href="login" class="page-scroll">Login</a></li>
							<li><a href="register1"> REGISTER</a></li>
							</c:when>
							
							<c:when test="${sessionScope['email'] ne null}">
							<li><a href="logout" class="page-scroll">Logout</a></li>
							</c:when>

						</c:choose>
						</ul>
						<c:if test="${sessionScope['email'] == 'beetroot@ex.com'}">
                         <!-- <a href="add" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADD <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="admin/addproduct">PRODUCT</a></li>
            <li><a href="admin/addcategory">CATEGORY</a></li>
            <li><a href="admin/addsupplier">SUPPLIER</a></li>
                   </ul> -->
                   <ul class="nav navbar-nav navbar-Left">
<!--     <li class="active"><a href="#"><span class="glyphicon glyphicon-plus"></span>Add</a> -->
			<li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-plus"></span>Add <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/addproduct"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
                        <li><a href="/addcategory"><span class="glyphicon glyphicon-plus"></span>Add Category</a></li>
                        <li><a href="/addsupplier"><span class="glyphicon glyphicon-plus"></span>Add Supplier</a></li>
                        </ul>
                </li>
		</li>
                          </c:if>
						<c:if test="${sessionScope['email'] != 'beetroot@ex.com'}">
                         <li><a href="products"> PRODUCTS</a></li>
 							<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                        
                          </c:if>
    </ul> --%>
   
      <c:if test="${sessionScope['user'] ne null }">
        <c:if test="${sessionScope['user'].role eq 'ROLE_ADMIN'}">
        
        <li><a href='<c:url value='/admin/supplier'></c:url>'><span class="glyphicon glyphicon-shopping-home"></span>Admin Home</a>
       <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADD <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href='<c:url value='/admin/addproduct'></c:url>'>Product</a></li>
                        <li><a href='<c:url value='/admin/addcategory'></c:url>'>Category</a></li>
                        <li><a href='<c:url value='/admin/addproduct'></c:url>'>Supplier</a></li>
                        </ul>
                        </li>
			<%-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">ADD <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href='<c:url value='admin/addproduct'></c:url>'>'PRODUCT</a></li>
            <li><a href='<c:url value='admin/addcategory'></c:url>'>'CATEGORY</a></li>
            <li><a href='<c:url value='admin/addproduct'></c:url>'>'SUPPLIER</a></li>
                   </ul>
                </li> --%>
		
<!-- 		<li><a href="admin/orders"><span class="glyphicon glyphicon-tasks"></span>My Orders<span class="badge">2</span> </a></li>
 -->		</c:if></c:if>
		<c:if test="${sessionScope['user'].role ne'ROLE_ADMIN'}">
      <li><a href="home"><span class="glyphicon glyphicon-shopping-home"></span>Home</a></li>
        <li><a href="products">Products</a></li>
<!--         <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<span class="badge"></span></a></li>
 -->        </c:if>
       </ul>
	 
	 
	 
      <ul class="nav navbar-nav navbar-right">
                 		
            		 <!-- <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li> -->
          
 			 <c:choose>	
 			 <c:when test="${sessionScope['user'] eq null}">
        			<li><a href="register1"><span class="glyphicon glyphicon-pencil"></span>Register</a></li>
        			<li><a href="login"><span class="glyphicon glyphicon-user"></span>Login</a></li>
        			 
       			 
        		</c:when>
				<c:when test="${sessionScope['user'] ne null}">   				          		
      		  		<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>LogOut</a></li>
      		  	</c:when>
      		  	</c:choose>
      		  	</ul>
      		  	</ul>
      		  	
  
</nav>		
</body>
</html>	