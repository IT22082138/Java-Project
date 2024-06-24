
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
    <title>Payment.com</title>
    
    <script>
        function validateForm() {
            var email = document.forms["form1"]["eml"].value;
            var cardNumber = document.forms["form1"]["cNo"].value;
            var phoneNumber = document.forms["form1"]["phone"].value;
            var expiryDate = document.forms["form1"]["eDate"].value;
            var cvv = document.forms["form1"]["cvv"].value;

            
            if (email === "") {
                alert("Email Address must be filled out");
                return false;
            }
            if (cardNumber === "") {
                alert("cardNumber must be filled out");
                return false;
            }
            if (phoneNumber === "") {
                alert("phoneNumber must be filled out");
                return false;
            }           
            if (expiryDate === "") {
                alert("expiryDate must be filled out");
                return false;
            }if (cvv === "") {
                alert("cvv must be filled out");
                return false;
            }

            
            return true;
        }
    </script>
    
</head>
<!-------------------------------------------------------------------------------------------------------------------->
<body>

<jsp:include page="heder.jsp"/>
                    
   
                    <!-- start: Payment -->
    <section class="payment-section">
        <div class="container">
            <div class="payment-wrapper">
                <div class="payment-left">
                    <div class="payment-header">
                        <div class="payment-header-icon"><i class="ri-flashlight-fill"></i></div>
                        <div class="payment-header-title">Total Cost</div>
                        <p class="payment-header-description">Enter your dates to see the latest prices and deals for Tours.</p>
                    </div>
                    <div class="payment-content">
                        <div class="payment-body">
                            <div class="payment-plan">
                                <div class="payment-plan-type">Pro</div>
                                <div class="payment-plan-info">
                                    <div class="payment-plan-info-name">Professional Tour Guide Package</div>
                                    <div class="payment-plan-info-price">RS 20000 per tour</div>
                                </div>
                                <a href="#" class="payment-plan-change">Change</a>
                            </div>
                            <div class="payment-summary">
                                <div class="payment-summary-item">
                                    <div class="payment-summary-name">Additional fee</div>
                                    <div class="payment-summary-price">-RS 1000/-</div>
                                </div>
                                <div class="payment-summary-item">
                                    <div class="payment-summary-name">Discount 10%</div>
                                    <div class="payment-summary-price">-RS 2000/-</div>
                                </div>
                                <div class="payment-summary-divider"></div>
                                <div class="payment-summary-item payment-summary-total">
                                    <div class="payment-summary-name">Total</div>
                                    <div class="payment-summary-price">-RS 19000/-</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="payment-right">
                    <form action="paymentInsert" class="payment-form" id="form1" name="form1" method="post" onsubmit="return validateForm();">
                        <h1 class="payment-title">Payment Details</h1>
                        <div class="payment-method">
                        	
                            <input type="radio" name="payment-method" id="method-1" checked>
                            <label for="method-1" class="payment-method-item">
                                <img src="images/visa.png" alt="">
                            </label>
                            <input type="radio" name="payment-method" id="method-2">
                            <label for="method-2" class="payment-method-item">
                                <img src="images/mastercard.png" alt="">
                            </label>
                            <input type="radio" name="payment-method" id="method-3">
                            <label for="method-3" class="payment-method-item">
                                <img src="images/paypal.png" alt="">
                            </label>
                            <input type="radio" name="payment-method" id="method-4">
                            <label for="method-4" class="payment-method-item">
                                <img src="images/stripe.png" alt="">
                            </label>
                        </div>
                        <div class="payment-form-group">
                            <input type="email" name="eml" placeholder=" " class="payment-form-control" id="email" value = "" >
                            <label for="email" class="payment-form-label payment-form-label-required">Email Address</label>
                        </div>
                        <div class="payment-form-group">
                            <input type="text"  name="cNo" placeholder=" " class="payment-form-control" id="card-number" value="" >
                            <label for="card-number" class="payment-form-label payment-form-label-required">Card Number</label>
                        </div>
                        
                        <div class="payment-form-group">
                            <input type="text"  name="phone" placeholder=" " class="payment-form-control" id="card-number" value="" >
                            <label for="phone-number" class="payment-form-label payment-form-label-required">phone Number</label>
                        </div>
                        <div class="payment-form-group-flex">
                            <div class="payment-form-group">
                             <input type="month" name="eDate" class="payment-form-control" id="expiry-date" >
                             <label for="expiry-date" class="payment-form-label payment-form-label-required">Expire Date (Month and Year)</label>
                            </div>

                            <div class="payment-form-group">
                            	
                                <input type="text"  name="cvv" placeholder=" " class="payment-form-control" id="cvv" value="" >
                                <label for="cvv" class="payment-form-label payment-form-label-required">CVV</label>
                            </div>
                          
                        </div>
                        <button type="submit" class="payment-form-submit-button"><i class="ri-wallet-line"></i> Pay</button><br>
                        <button id="savme" type="submit" class="payment-form-submit-button"><i class="ri-wallet-line"></i> Save Payment Details</button><br>
                        <button id="edit" type="submit" class="payment-form-submit-button"><i class="ri-wallet-line"></i><a href="SearchPayment.jsp"> View Payment Details </a></button>
                        
                       
                    </form>
                    
                   
                    <!---->    
                </div>
            </div>
        </div>
        </section>
    <!-- end: Payment -->
    

                

                      
        
 		<jsp:include page="footer.jsp"/>
        
    
    
</body>
    
</html>