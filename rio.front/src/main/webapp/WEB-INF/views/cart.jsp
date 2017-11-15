<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
<%@include file="header.jsp"%>

<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>


<!-- <div class="container"> 
<div class="row">	
<div  align="center"class="col-sm-4 col-sm-offset-4">

<div align="center" class="panel-heading"><b style="font-size:150%;">Cart</b></div>
</div>
</div>
</div>			
  <div class="row">  
    <div class="col-sm-10">
      <div class="panel panel-primary">
      <div align="center" class="col-sm-2 panel-heading">Product_Name</div>
      <div align="center" class="col-sm-2 panel-heading">Quantity</div>
      <div align="center" class="col-sm-2 panel-heading">Cost</div>
      <div align="center" class="col-sm-2 panel-heading">Amount</div>
      <div align="center" class="col-sm-2 panel-heading">Action</div>
      </div></div></div> -->
      <section id="products" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 wow fadeInLeft delay-05s">
                    <div class="section-title">
                        <h2 class="head-title">CART</h2>
  
<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div  align="center" class="col-sm-2 panel-body">
					Product_Name
				</div>
				<div align="center" class="col-sm-2 panel-body">
					  Quantity
				</div>
				<div align="center" class="col-sm-2 panel-body">
					Cost
				</div>
				<div align="center" class="col-sm-2 panel-body">
					Amount
				</div>
				
				<div align="center" class="col-sm-2 panel-body">
					Action
				</div>
			</div>
		</div>
      <%-- <a href="view?id=${p.pid}"><img src="./resource/images/${p.pimg}" class="img-responsive" style="width:100%" ></a> --%>
        <c:forEach items="${sessionScope['cart'].items}" var="c"> 
  <div class="row">  
    <div class="col-sm-10">

      <div align="center" class="col-sm-2 panel-body">${c.product.pname}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity}</div>
      <div align="center" class="col-sm-2 panel-body">${c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity * c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">
      <a href="updateitem?id=${p.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteitem?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      
       
      </div>
      
      </div>
          </c:forEach> 
      <div class="col-sm-12 panel panel-default"></div>	
</div>
</div>
</div>
</div>
</div>
</section>


	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
<%@include file="footer.jsp"%>

</body>
</html>