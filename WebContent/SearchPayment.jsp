<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/payment.css">
    <link rel="stylesheet" href="styles/all.min.css">
    <title>Search Your Payment Details</title>
    
  	

    <style>
    .custom-input {
        width: 100px; /* Adjust the width as needed */
    }
</style>
    
    
    
</head>
<body>
   <jsp:include page="heder.jsp"/>

       
    <!-- login form -->

    <div class="login-form-container">

        <div id="close-login-btn" class="fas fa-times"></div>

    </div><br><br>
    
    
   
<div align="center">
<div class="container">
        <div class="text-center">
            <h1>View Payment Details By Your Email</h1><br><br>

            <form action="viewPayment" id="form1" name="form1" method="post">
                <div class="form-group">
                    <!--<input type="email" class="form-control" name="eml" id="email" placeholder="Enter your E-mail" value="" required>-->
                    
                    
                    <div class="payment-form-group-search">
                            <input type="email" name="eml" placeholder=" " class="payment-form-control-search" id="email" value = "" required>
                            <label for="email" class="payment-form-label-search payment-form-label-required-search">Enter your E-mail</label>
                        </div>
                

                <button type="submit" name="submit" class="btn btn-primary">Search</button>
                </div>
            </form>
        </div>
    </div>
    </div>

 		<jsp:include page="footer.jsp"/>
 
    <script type="text/javascript" src="js/payment.js"></script>
</body>
    
</html>