<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
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
<%@include file="header.jsp"%>

<form action="update" method="POST">
            <div class="container text-center">

                   <h1 class="top-title">UPDATE PRODUCTS</h1>

<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="update" method="POST" role="form" style="display: block;">
						<input type="hidden" name="pid" value="${product.pid}" />									
									
									<div class="form-group">
										<select   class="form-control" name="sid" id="sid" tabindex="1" >								
										
										<c:forEach items="${supplier}" var="sup">
										<c:choose>
											<c:when test="${sup.id eq product.sid.id}">
												<option value="${sup.id}" selected="selected">${sup.name}</option>
											</c:when>
											<c:otherwise>
												<option value="${sup.id}">${sup.name}</option>
											</c:otherwise>											
										</c:choose>

										
										</c:forEach>
    									</select>
									
									</div>
									<div class="form-group">
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" value="${product.pname}">
									</div>
									<div class="form-group">  
 										 <select  name="cat" class="form-control" id="cat" tabindex="1" > 										 										
    																			
    									<c:forEach items="${categories}" var="cat">
    										<c:choose>
    											<c:when test="${cat.cid eq product.cat.cid }">
    												<option value="${cat.cid}" selected>${cat.cname}</option>
    											</c:when>
    											<c:otherwise>
    												<option value="${cat.cid}">${cat.cname}</option>
    											</c:otherwise>
    										</c:choose>    									
										</c:forEach>
    									</select>

</div>
								
									<div class="form-group">
										<input type="text" name="pdescrip" id="pdescrip" tabindex="1" class="form-control" placeholder="Description" value="${product.pdescrip}" >
									</div>
									<div class="form-group">
										<input type="text" name="pquantity" id="pquantity" tabindex="1" class="form-control" placeholder="quantity"  value="${product.pquantity}">
									</div>
									<div class="form-group">
										<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price"  value="${product.pprice}">
									</div>
									<div class="form-group">
										<input type="file" name="pimage" id="pimage" tabindex="1" class="form-control" placeholder="Image" value="${product.pimage}">
										
									</div>				
																
									<div class="container">

							
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div></div>
</div>

<div class="container">
    	<div class="row">
			<div class="col-lg-12">
					<div class="panel panel-update">
					<div class="panel-heading">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<a href="#" class="active" >Update Category</a>
							</div>
						</div>
					</div>	
					<div class="panel-body">
    	<div class="row">
			<div class="col-md-6 col-sm-offset-3">
						<form id="update" action="updatecategory" method="POST" role="form" style="display: block;" >
									
									<input type="hidden" name="cid" value="${category.cid}" >
									<div class="form-group">
										<input type="text" name="cname" id="cname" tabindex="1" class="form-control" placeholder="Category Name" value="${category.cname}">
									</div>
									<div class="form-group">
										<input type="text" name="cdesc" id="cdesc" tabindex="1" class="form-control" placeholder="Description" value="${category.cdesc}" >
									</div>
									
													
																
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update Category">
											</div>
											
										</div>
									</div>
								</form>
</div>
</div>
</div></div></div>
</div></div>

<%@include file="footer.jsp"%>
</form>
</body>
</html>
