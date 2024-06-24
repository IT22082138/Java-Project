<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/payment.css">
    <link rel="stylesheet" href="styles/all.min.css">
    <title>Update Payment</title>

</head>
<!-------------------------------------------------------------------------------------------------------------------->
<body>
	<jsp:include page="heder.jsp"/>

<%
		String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String cNo = request.getParameter("cNo");
	    String cvv = request.getParameter("cvv");
	    String eDate = request.getParameter("eDate");

%>
	   
	   
	   
   <br><br>
        <!--<h1 id="heading">Simply pay and Download your favourite Song  🎧</h1>
        <div id="all">
            <div id="left">
                <form action="paymentDelete" id="form1" name="form1" method="post"><br>
                <h1>Are You Sure You Want to Delete Payment Details?</h1>
                    <b id="mailname">E-Mail</b>
                    <input type="email" name="eml" id="email" placeholder="    Enter your E-mail" value="<%= email%>" readonly><br><br>
                    <b id="phonenum">Phone Number</b>
                    <input type="text" name="phone" id="idnum" placeholder="    Enter Phone Number" value="<%= phone%>" readonly><br><br>
                    <b id="cardno">Bank Card Number</b>
                    <input type="text" name="cNo" id="cnum" input type="xxxx xxxx xxxx xxxx"  placeholder="  Card Number          xxxx   xxxx   xxxx   xxxx" value="<%= cNo%>" readonly><br><br>
                    <b id="cvvid">CVV</b>
                    <input type="text" name="cvv" id="cvv" placeholder="CVV" value="<%= cvv%>" readonly><br><br>
                    <b id="expdate">Expire Date</b>
                    <input type="month" name="eDate" id="date" placeholder="     MM / YY" value="<%= eDate%>" readonly><br>

                    <button id="save" type="submit">Delete Payment Details</button>
                    </form>
            </div>

        </div> -->
        
        
        <div class="payment-right">
                    <form action="paymentDelete" class="payment-form" id="form1" name="form1" method="post">
                        <h1 class="payment-title">Payment Details</h1>
        
        <div class="payment-form-group">
         				
         				 
                            <input type="email" name="eml" placeholder=" " class="payment-form-control" id="email" value = "<%= email%>" readonly required>
                            <label for="email" class="payment-form-label payment-form-label-required">Email Address</label>
                        </div>
                        <div class="payment-form-group">
                            <input type="text"  name="cNo" placeholder=" " class="payment-form-control" id="card-number" value="<%= cNo%>" readonly required>
                            <label for="card-number" class="payment-form-label payment-form-label-required">Card Number</label>
                        </div>
                        
                        <div class="payment-form-group">
                            <input type="text"  name="phone" placeholder=" " class="payment-form-control" id="card-number" value="<%= phone%>" readonly required>
                            <label for="phone-number" class="payment-form-label payment-form-label-required">phone Number</label>
                        </div>
                        <div class="payment-form-group-flex">
                            <div class="payment-form-group">
                                <input type="month" name="eDate" placeholder=" " class="payment-form-control" id="expiry-date" value="<%= eDate%>" readonly required>
                                <label for="expiry-date" class="payment-form-label payment-form-label-required">Expire Date</label>
                            </div>
                            </div>
                            <div class="payment-form-group">
                            	
                                <input type="text"  name="cvv" placeholder=" " class="payment-form-control" id="cvv" value="<%= cvv%>" readonly required>
                                <label for="cvv" class="payment-form-label payment-form-label-required">CVV</label>
                            </div>
                            
                            <!--<button id="save" type="submit">Save Changes</button> -->
                            <button id="save" type="submit" class="payment-form-submit-button"><i class="ri-wallet-line"></i> Delete Payment Details </button><br>
                            </form>
                        </div>

    
                       <jsp:include page="footer.jsp"/>
        <script type="text/javascript" src="js/payment.js"></script>
</body>
    
</html>