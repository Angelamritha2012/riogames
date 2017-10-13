<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <form action="Products" method="POST">
		<input type="text" name="txtName" placeholder="Product Name" /><br>
		<input type="price" name="txtPrice" placeholder="Price" /><br>
		<input type="tel" name="txtContact" placeholder="Mobile No." /><br>
		<input type="text" name="txtAddress" placeholder="Address" /><br>
		<input type="submit" name="butSubmit" value="Submit" /> 
	</form> -->
	<spring:form action="products" method="POST">
		Product Name : <spring:input type="text" path="name"/> <br>
		Price : <spring:input type="price" path="price"/><br>
		<%-- Contact : <spring:input type="contact" path="contact"/><br>
		Address : <spring:input type="text" path="address"/> --%>
		<input type="submit" name="butSubmit" value="Submit" />		
	</spring:form>
</body>
</html>