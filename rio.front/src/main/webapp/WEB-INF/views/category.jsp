<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false" %>

<html>
<head>
 <%@include file="header.jsp"%>
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
		
						<c:forEach items="${category}" var="cat">
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
					<a href="updatecategory?id=${cat.cid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="deletecategory?id=${cat.cid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
		
	</div>
		</div>
		</div>
		</div>
</div>
</body>
</html>