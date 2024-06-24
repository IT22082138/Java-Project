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
                <form action="paymentUpdate" id="form1" name="form1" method="post"><br>
                    <h1>Update Payment Details</h1>
                    <b id="mailname">E-Mail</b>
                    <input type="email" name="eml" id="email" placeholder="    Enter your E-mail" value="<%= email%>" readonly><br><br>
                    <b id="phonenum">Phone Number</b>
                    <input type="text" name="phone" id="idnum" placeholder="    Enter Phone Number" value="<%= phone%>" required><br><br>
                    <b id="cardno">Bank Card Number</b>
                    <input type="text" name="cNo" id="cnum" input type="xxxx xxxx xxxx xxxx"  placeholder="  Card Number          xxxx   xxxx   xxxx   xxxx" value="<%= cNo%>" required><br><br>
                    <b id="cvvid">CVV</b>
                    <input type="text" name="cvv" id="cvv" placeholder="CVV" value="<%= cvv%>" required><br><br>
                    <b id="expdate">Expire Date</b>
                    <input type="month" name="eDate" id="date" placeholder="     MM / YY" value="<%= eDate%>" required><br>

                    <button id="save" type="submit">Save Changes</button>
                    </form>
            </div>

        </div>-->
        
        <div align="center">
         <div class="payment-right">
                    <form action="paymentUpdate" class="payment-form" id="form1" name="form1" method="post">
                        <h1 class="payment-title">Payment Details</h1>
        
        
         <div class="payment-form-group-ud">
         		
         				 
                            <input type="email" name="eml" placeholder=" " class="payment-form-control-ud" id="email" value = "<%= email%>" readonly required>
                            <label for="email" class="payment-form-label-ud payment-form-label-required-ud">Email Address</label>
                        </div>
                        <div class="payment-form-group-ud">
                            <input type="text"  name="cNo" placeholder=" " class="payment-form-control-ud" id="card-number" value="<%= cNo%>" required>
                            <label for="card-number" class="payment-form-label-ud payment-form-label-required-ud">Card Number</label>
                        </div>
                        
                        <div class="payment-form-group-ud">
                            <input type="text"  name="phone" placeholder=" " class="payment-form-control-ud" id="card-number" value="<%= phone%>" required>
                            <label for="phone-number" class="payment-form-label-ud payment-form-label-required-ud">phone Number</label>
                        </div>
                        <div class="payment-form-group-ud-flex">
                            <div class="payment-form-group-ud">
                                <input type="month" name="eDate" placeholder=" " class="payment-form-control-ud" id="expiry-date" value="<%= eDate%>" required>
                                <label for="expiry-date" class="payment-form-label-ud payment-form-label-required-ud">Expire Date</label>
                            </div>
                            </div>
                            <div class="payment-form-group-ud">
                            	
                                <input type="text"  name="cvv" placeholder=" " class="payment-form-control-ud" id="cvv" value="<%= cvv%>" required>
                                <label for="cvv" class="payment-form-label-ud payment-form-label-required-ud">CVV</label>
                            </div>
                            
                            <!--<button id="save" type="submit">Save Changes</button> -->
                            <button id="save" type="submit" class="payment-form-update-button"><i class="ri-wallet-line"></i> Save Changes </button><br>
                            </form>
                            
                       </div>
                       </div>
             
  
    
 
    
    		<jsp:include page="footer.jsp"/>
    <script type="text/javascript" src="js/payment.js"></script>
</body>
    
</html>