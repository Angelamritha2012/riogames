<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
 <%@include file="header.jsp" %>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>


<!-- <div id="product"> -->
<div class="container">  
  <div class="row"><h2>Product Description</h2>
    <div class="col-sm-4">
      <div class="primary">
        <div class="heading" >${product.pname}</div>
        <div class="body"><img src="./resource/img/${product.pimage}" class="img-responsive" style="width:100%" height="auto" ></div>
        <div class="footer">Price:${product.pprice}</div>
			</div>
    </div>
    <form action="addToCart" method="get">
    
	<div class="col-sm-8">
	<div class="primary">
        <div class="heading">Product Description</div>
        <div class="body"><table class="table table-striped">
		<tr><td class="col-sm-2">Product Type:</td><td align="left">GAMES</td></tr>
		<tr><td class="col-sm-2">Description:</td><td align="left">${product.pdescrip}<!-- "A journey across space to discover the source of the Neucromorph outbreak" --></td></tr>
		<!-- <tr><td>Supplier:</td><td>WE ARE GAMES</td></tr> -->
		<tr><td class="col-sm-2">Price:</td><td align="left">${product.pprice}</td></tr>
		<tr><td class="col-sm-2">Quantity:</td><td align="pull-right"><input type="text" name="txtQuantity" value="" /></td></tr>
		</table></div>
		<input type="hidden" name="id" value="${product.pid}" />
        <%-- <div class="panel-footer"><a href="addToCart?id=${product.pid}" role="button" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
		</a></div> --%>
		<div class="footer"><button type="submit" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
		</button></div>
	</div>
	<br>
<br>

<br>
	<div class="col-sm-offset-5 col-centered"><a href="products"
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt"></span>Continue Shopping
	</a></div>      
</div>
</form>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@include file="footer.jsp" %>

</body>
</html>
