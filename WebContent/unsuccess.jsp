<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/payment.css">
    <link rel="stylesheet" href="styles/all.min.css">
<title>Opeartion_Unsuccessful</title>
</head>

<body>

	<jsp:include page="heder.jsp"/>

		<div align="center">
        <h1><br><br>Payment Unsuccessful</h1><br><br>
        
        <button type="submit" class="payment-form-submit-button1"><i class="ri-wallet-line"></i> <a href="Payment.jsp">&laquo; Enter Details Again </a></button><br>
        
        <!-- <button><a href="Payment.jsp">&laquo; Enter Details Again </a></button> -->
		</div>
		
		<jsp:include page="footer.jsp"/>
		
</body>
</html>