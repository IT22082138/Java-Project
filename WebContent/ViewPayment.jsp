<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
h1{
	color: black;
}
table, td, th {  
  text-align: center;
   border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 50%;
  color: black;
}

th, td {
  padding: 15px;
  color: black;
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 18px;
}

tr:nth-child(even) {
  background-color: white;
}


</style>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/payment.css">
    <link rel="stylesheet" href="styles/all.min.css">
    <title>View Payment Details</title>

</head>
<!-------------------------------------------------------------------------------------------------------------------->
<body>
	<jsp:include page="heder.jsp"/>
         
         
     <h1 align="center"><br><br>Payment Details</h1><br><br>

	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="email" value="${us.email}"/>
	<c:set var ="phone" value="${us.phone}"/>
	<c:set var ="cNo" value="${us.cNo}"/>
	<c:set var ="cvv" value="${us.cvv}"/>
	<c:set var ="eDate" value="${us.eDate}"/>
	
	<tr>
		<td>Customer Email</td>
		<td>${us.email}</td>
	</tr>
	
	<tr>
		<td>Contact Number</td>
		<td>${us.phone}</td>
	</tr>
	
	<tr>
		<td>Card Number</td>
		<td>${us.cNo}</td>
	</tr>
	
	<tr>
		<td>CVV</td>
		<td>${us.cvv}</td>
	</tr>
	
		<tr>
		<td>Expire Date</td>
		<td>${us.eDate}</td>
	</tr>
	
	
	
	
	</c:forEach>
	</table>
	<br />
	
	<c:url value="UpdatePayment.jsp" var="usupdate">
	
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="cNo" value="${cNo}"/>
	<c:param name ="cvv" value="${cvv}"/>
	<c:param name ="eDate" value="${eDate}"/>
	</c:url>
	
	
	<div align="center">
	
	<br><a href = "${usupdate}">
	<!--<input type="button" name="update" class="submit2" value="Update Payment Details">-->
	<button type="submit" class="payment-form-viwe-button"><i class="ri-wallet-line"></i> Update Payment Details </button><br>
	</a><br>
	
	
	<c:url value="DeletePayment.jsp" var="usdelete">
	
	<c:param name ="email" value="${email}"/>
	<c:param name ="phone" value="${phone}"/>
	<c:param name ="cNo" value="${cNo}"/>
	<c:param name ="cvv" value="${cvv}"/>
	<c:param name ="eDate" value="${eDate}"/>
	</c:url>
	
	<a href = "${usdelete}">
	 <button type="submit" class="payment-form-viwe-button"><i class="ri-wallet-line"></i> Delete Payment Details </button><br>
	</a><br>
	
	 <button type="submit" class="payment-form-viwe-button"><i class="ri-wallet-line"></i><a href="success.jsp"> Pay</button><br>
	
	<br /><br />
	
	</div>

	
    
    <jsp:include page="footer.jsp"/>
 
    <script type="text/javascript" src="js/payment.js"></script>
</body>
    
</html>