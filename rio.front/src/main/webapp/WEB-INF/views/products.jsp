<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>

<form action="products" method ="POST">

<body>
<section id="products" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">PRODUCTS</h2>
						
<div class="container">
  <div class="jumbotron">     

				<ul>
				<c:forEach items="${products}" var="p">
				<li>
						<div class="product-image">
							<img src="./resource/img/${p.pimage}" alt="" />
						</div>
						<div class="product-description" data-name="${p.pdescrip}"
							data-price="20.00">
							<h3 class="product-name">${p.pname}</h3>
							<p class="product-price">${p.pprice}</p>
							<form class="add-to-cart" action="cart" method="post">
								<div>
									<label for="qty-1">Quantity</label> <input type="text"
										name="qty-1" id="qty-1" class="qty" value="1" />
								</div>
								<p>
									<input type="submit" value="Add to cart" class="btn" />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="product?id=${p.pid}"
										role="button" class="btn btn-warning">Details</a>
								</p>
							</form>
						</div>
					</li>					
				</c:forEach>
					
				</ul>
			</div>
		</div>
				

<!-- <div class="row">
  <div class="col-md-2 text-center">
    <img src="./resource/img/img1.jpg" width="150px" height="150px">
    <br>
    Dead Space 3 limited edition - <strong>$20.00</strong>
    <br>
   <a href="products1"> <button class="btn btn-danger my-basket-btn" data-id="1" data-name="product 1" data-summary="summary 1" data-price="20.00" data-quantity="1" data-image="./resource/img/img1.jpg">Add to Basket</button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>

  <div class="col-md-3 text-center">
    <img src="./resource/img/img2.jpg" width="150px" height="150px">
    <br>
    Hitman Absolution Professional Edition- <strong>$10.00</strong>
    <br>
    <a href="products1"><button class="btn btn-danger my-basket-btn" data-id="2" data-name="product 2" data-summary="summary 2" data-price="10.00" data-quantity="1" data-image="./resource/img/img2.jpg">Add to Basket</button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>
  

  <div class="col-md-3 text-center">
    <img src="./resource/img/img3.jpg" width="150px" height="150px">
    <br>
    Operation flashpoint Red river- <strong>$11.12</strong>
    <br>
   <a href="products1"> <button class="btn btn-danger my-basket-btn" data-id="3" data-name="product 3" data-summary="summary 3" data-price="11.12" data-quantity="1" data-image="./reesource/img/img3.jpg">Add to Basket</button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>

  <div class="col-md-3 text-center">
    <img src="./resource/img/img4.jpg" width="150px" height="150px">
    <br>
    A Long walk to freedom of life - <strong>$23.00</strong>
    <br>
    <a href="products1"><button class="btn btn-danger my-basket-btn" data-id="4" data-name="product 4" data-summary="summary 4" data-price="23.00" data-quantity="1" data-image="./resource/img/img4.jpg">Add to Basket</button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>
<br></br>
<br></br>
<br></br>
<br></br>
</div>
<div class="row">
  <div class="col-md-3 text-center">
    <img src="./resource/img/img5.jpg" width="150px" height="150px">
    <br>
    Politically Incorrect- <strong>$22.00</strong>
    <br>
    <a href="products1"><button class="btn btn-danger my-basket-btn" data-id="5" data-name="product 5" data-summary="summary 5" data-price="22.00" data-quantity="1" data-image="./resource/img/img5.jpg">Add to Basket</button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>
  
  <div class="col-md-3 text-center">
    <img src="./resource//img/img6.jpg" width="150px" height="150px">
    <br>
    The Bone Bed- <strong>$19.99</strong>
    <br>
    <a href="products1"><button class="btn btn-danger my-basket-btn" data-id="6" data-name="product 6" data-summary="summary 6" data-price="19.99" data-quantity="1" data-image="./resource/img/img6.jpg">Add to Basket </button>
    <a href="productdetails" class="btn btn-info">Details</a>
  </div>

</div> -->
    
	
<footer>
  <p>@NIIT E-COMMERCE PROJECT 2017</p>
  
</footer>    


</body>
</html>