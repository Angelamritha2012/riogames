<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>     

<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>

<head>
 
 

<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="products1"> 
		
	</a>
	</h1>
	</div>
	<div class="span4">
	<div class="offerNoteWrapper">
	<h1 class="dotmark">
	<i class="icon-cut"></i>

	</h1>
	</div>
<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index">Home</a> <span class="divider">/</span></li>
    <li class="active">Preview</li>
    </ul>	
	<div class="well well-small">
	
                  <div class="item">
                    <a href="#"> <img src="./resource/img/img1.jpg" alt="" style="width:20%"></a>
                  </div>
            </div>    
			</div>
			<div class="span7">
				<h3>Dead Space 3 Limited Edition[$20.00]</h3>
				<hr class="soft"/>
				
					  
				</div>
				<p>Dead Space 3 is a science fiction survival horror video game developed by Visceral Games and published by Electronic Arts. Announced at E3 2012 and released internationally in February 2013,[2] it is the sequel to Dead Space 2 and the third main entry in the Dead Space series.[3]
In Dead Space 3, Isaac Clarke teams up with EarthGov Sergeant John Carver as they travel to Tau Volantis, an ice-covered planet, to end the Marker and Necromorph threat for good.
Development of the game began after the completion of Dead Space 2. It is the first game in the Dead Space series to feature online co-op.
The game received positive reviews from game critics upon release; reviewers praised the game's rewarding action gameplay, although criticism was directed at the focus on action over horror, as well as a weak and unfocused story compared to its predecessors. Dead Space 3 sold 605,000 copies and became less successful than its predecessors. Despite poor sales, EA and Visceral expressed interest in a sequel.
</p>

				<p>
				<blockquote>
				Developer(s)---Visceral Games<br>
Publisher(s)---Electronic Arts<br>
Producer(s)---Steve Papoutsis<br>
Composer(s)---Jason Graves
James Hannigan<br>
Series---Dead Space<br>
Platform(s)---Microsoft Windows,
PlayStation 3,
Xbox 360<br>
Release--NA: February 5, 2013
AU: February 7, 2013
EU: February 8, 2013[1]<br>
Genre(s)---Survival horror<br>
Mode(s)---Single-player, multiplayer<br>
</blockquote>
</p>
<div>
<a href=products><input type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>
</div>
			<div class="details col-sm-4">
						<h3 class="product-title"><b><i>${product.name}</i></b></h3>

						<p class="product-description">${product.description}</p>
						<h4 class="release-date"><b>Initial release date:</b> 5 February 2013</h4>
						<h4 class="developer"><b>Developer:</b> Visceral Games</h4>
						<h4 class="price"><b>current price: </b><span>${product.pprice}</span></h4>
						
						
						<div class="action">
							<div data-name="Dead Space 3 Edition" data-price="20.00">
					<!--<h3 class="product-name">Dead Space 3 Edition</h3>
						<p class="product-price">$20.00</p>-->
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
						</div>
					</div>
			</div> 
		</div>
	</div>
</div>
</div>
 
</div>
	</div>
			
			</body>
			</html> --%>
			<!DOCTYPE html>
<html lang="en">
<%@page isELIgnored="false" %>
 <%@include file="header.jsp" %>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<body>


<!-- <div id="product"> -->
<<div class="row-fluid">
		  <ul class="thumbnails">
			<li class="span4">
			  <div class="thumbnail">  
  <div class="row"><h2>Product Description</h2>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading" >${product.pname}</div>
        <div class="panel-body"><img src="./resource/img/${product.pimage}" class="img-responsive" style="width:100%" height="auto" ></div>
        <div class="panel-footer">Price:${product.pprice}</div>
			</div>
    </div>
	<div class="row-fluid">
		  <ul class="thumbnails">
			<li class="span3">
			  <div class="thumbnail">
<!--         <div class="panel-heading">   Product Description</div>
 -->        <div class="panel-body"><table class="table table-striped">
		<tr><td class="col-sm-2">Product Type:</td><td align="left">GAMES</td></tr>
		<tr><td class="col-sm-2">Description:</td><td align="left">${product.pdescrip}<!-- "A journey across space to discover the source of the Neucromorph outbreak" --></td></tr>
		<!-- <tr><td>Supplier:</td><td>WE ARE GAMES</td></tr> -->
		<tr><td class="col-sm-2">Price:</td><td align="left">${product.pprice}</td></tr>
		</table></div>
        <div class="panel-footer"><a href="addToCart?id=${product.pid}" role="button" class="btn btn-warning btn-sm btn-block">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
						</a></div>
	</div>
	<div class="col-sm-offset-5 col-centered"><a href="products" class="overlay
			role="button" class="btn btn-success btn-sm btn-block">
	<span class="glyphicon glyphicon-share-alt" ></span>Continue Shopping
	</a></div>
      
</div>
</div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>