<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deluxe_room.aspx.cs" Inherits="deluxe_room" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Deluxe Room</title>
    <link rel="shortcut icon" href="img/favicon.png" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Barlow&amp;family=Barlow+Condensed&amp;family=Gilda+Display&amp;display=swap">
    <link rel="stylesheet" href="css/plugins.css" />
    <link rel="stylesheet" href="css/style.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Livvic:wght@500;600;700&display=swap" rel="stylesheet">
 <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,500;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Poppins:400,500%7CTeko:300,400,500%7CMaven+Pro:500">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
       <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gideon+Roman&display=swap" rel="stylesheet">


     <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

 
     

    <script>
        $(function () {
            $("#<%= txtCheckIn.ClientID %>").datepicker({
                dateFormat: 'dd/mm/yy',
            });
        });
    </script>

        <script>
            $(function () {
                $("#<%= txtCheckOut.ClientID %>").datepicker({
                    dateFormat: 'dd/mm/yy',
                });
            });
    </script>



</head>
<body>
    <!-- Preloader -->
    <div class="preloader-bg"></div>
    <div id="preloader">
        <div id="preloader-status">
            <div class="preloader-position loader"> <span></span> </div>
        </div>
    </div>
    <!-- Progress scroll totop -->
    <div class="progress-wrap cursor-pointer">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <!-- Logo -->
            <div class="logo-wrapper navbar-brand valign">
                <a href="index.php">
                    <div class="logo">
                        <img src="img/logo.png" class="logo-img" alt=""> 
                    </div>
                </a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> 
			<span class="icon-bar"><i class="ti-line-double"></i></span> </button>
            <!-- Navbar links -->
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    
				  <li class="nav-item"><a class="nav-link" href="Default.aspx">home</a></li>
       
                   
                    <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                    <li class="nav-item dropdown"> <span class="nav-link"> Rooms & Suites <i class="ti-angle-down"></i></span>
                        <ul class="dropdown-menu last">
                            <li class="dropdown-item"><a href="standard_book.aspx">Standard Room</a></li>
                            <li class="dropdown-item"><a href="deluxe_book.aspx"> Delux Room</a></li>
                            <li class="dropdown-item"><a href="suite_book.aspx">Suite</a></li> 
                        </ul>
                    </li>
                    <li class="nav-item"> <a class="nav-link" href="facilites.html">Facilites</a></li>
                    <li class="nav-item"> <a class="nav-link" href="gallery.html"> Gallery </a></li>
                  
                    <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </nav>    <!-- Header Banner -->
    <div class="banner-header section-padding valign bg-img bg-fixed" data-overlay-dark="4" data-background="img/main.png">
        <div class="container">
            <div class="row">
                <div class="col-md-12 caption mt-90">
                    <h5>The Travotel Hotel</h5>
                    <h1>Deluxe Room</h1>
                </div>
            </div>
        </div>
    </div>

         <form id="Form1"  runat="server">
    <!-- Room Content -->
    <section class="rooms-page section-padding" data-scroll-index="1">
        <div class="container">
            <div class="row">
                <div class="col-md-12   ">
                    
				 <div class="booking-box">
                            <div class="head-box">
                                <h6>Rooms & Suites</h6>
                                <h4>Deluxe Room</h4>
                            </div>
                            <div class="booking-inner clearfix">
                              
                                    <div class="row">

                                    <div class="col-md-6">
                                            <div class="input1_wrapper">
                                                <label>Check in</label><asp:Label ID="lblcheckin" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtCheckIn" class="form-control input datepicker" placeholder="Check in" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>



                                          <div class="col-md-6">
                                            <div class="input1_wrapper">
                                                <label>Check out</label><asp:Label ID="lblcheckout" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                     <asp:TextBox ID="txtCheckOut" runat="server" class="form-control input datepicker" placeholder="Check out"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>



                                         <div class="col-md-6">
                                            <div class="select1_wrapper">
                                                <label>Adults</label><asp:Label ID="lbladult" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="select1_inner">
                                                      <asp:DropDownList ID="DropDownList1" runat="server" class="select2 select">
                                                      <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                                      <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                      <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                      <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                      <asp:ListItem Text="4" Value="4"></asp:ListItem>

                                                </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>



                                         <div class="col-md-6">
                                            <div class="select1_wrapper">
                                                <label>Children</label><asp:Label ID="lblchilds" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="select1_inner">
                                                   <asp:DropDownList ID="DropDownList2" runat="server" class="select2 select">
                                                      <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                                      <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                      <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                      <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                      <asp:ListItem Text="4" Value="4"></asp:ListItem>

                                                </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                        
                                        <div class="col-md-4">
                                            <div class="input1_wrapper">
                                                <label>No.'s of Rooms</label><asp:Label ID="lblroom" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="select1_inner">
                                                    <asp:DropDownList ID="DropDownList3" runat="server" class="select2 select">
                                                    <asp:ListItem Text="Rooms" Value=""></asp:ListItem>
                                                      <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                                      <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                      <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                      <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                      <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>



                                        <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Guest Name</label><asp:Label ID="lblguest" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtGuest" runat="server" class="form-control" placeholder="Enter Guest Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Guest Address</label><asp:Label ID="lbladdress" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                            <div class="col-md-4">
                                            <div class="select1_wrapper">
                                                <label>State</label><asp:Label ID="lblstate" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="select1_inner">

                                                     <asp:DropDownList ID="DropDownList4" runat="server" class="select2 select">
                                                     <asp:ListItem Text="Select State" Value=""></asp:ListItem>
                                                      <asp:ListItem Text="Andhra Pradesh" Value="0"></asp:ListItem>
                                                      <asp:ListItem Text="Arunachal Pradesh" Value="1"></asp:ListItem>
                                                      <asp:ListItem Text="Assam" Value="2"></asp:ListItem>
                                                      <asp:ListItem Text="Bihar" Value="3"></asp:ListItem>
                                                      <asp:ListItem Text="Chhattisgarh" Value="4"></asp:ListItem>

                                                       <asp:ListItem Text="Goa" Value="5"></asp:ListItem>
                                                      <asp:ListItem Text="Gujarat" Value="6"></asp:ListItem>
                                                      <asp:ListItem Text="Haryana" Value="7"></asp:ListItem>
                                                      <asp:ListItem Text="Himachal Pradesh" Value="8"></asp:ListItem>
                                                      <asp:ListItem Text="Jharkhand" Value="10"></asp:ListItem>

                                                      <asp:ListItem Text="Karnataka" Value="11"></asp:ListItem>
                                                      <asp:ListItem Text="Kerala" Value="12"></asp:ListItem>
                                                      <asp:ListItem Text="Madhya Pradesh" Value="13"></asp:ListItem>
                                                      <asp:ListItem Text="Maharashtra" Value="14"></asp:ListItem>
                                                      <asp:ListItem Text="Manipur" Value="15"></asp:ListItem>

                                                      <asp:ListItem Text="Meghalaya" Value="16"></asp:ListItem>
                                                      <asp:ListItem Text="Mizoram" Value="17"></asp:ListItem>
                                                      <asp:ListItem Text="Nagaland" Value="18"></asp:ListItem>
                                                      <asp:ListItem Text="Odisha" Value="19"></asp:ListItem>
                                                      <asp:ListItem Text="Punjab" Value="20"></asp:ListItem>

                                                      <asp:ListItem Text="Rajasthan" Value="16"></asp:ListItem>
                                                      <asp:ListItem Text="Sikkim" Value="17"></asp:ListItem>
                                                      <asp:ListItem Text="Tamil Nadu" Value="18"></asp:ListItem>
                                                      <asp:ListItem Text="Telangana" Value="19"></asp:ListItem>
                                                      <asp:ListItem Text="Tripura" Value="20"></asp:ListItem>

                                                       <asp:ListItem Text="Uttar Pradesh" Value="16"></asp:ListItem>
                                                      <asp:ListItem Text="Uttarakhand" Value="17"></asp:ListItem>
                                                      <asp:ListItem Text="West Bengal" Value="18"></asp:ListItem>

                                                     </asp:DropDownList>


                                                    
                                                </div>
                                            </div>
                                        </div>
                                        
                                         <div class="col-md-4">
                                            <div class="input1_wrapper">
                                                <label>City</label><asp:Label ID="lblcity" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="Enter City"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>


                                          <div class="col-md-6">
                                            <div class="input1_wrapper">
                                                <label>Email</label><asp:Label ID="lblemail" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Guest Email"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input1_wrapper">
                                                <label>Contact No.</label><asp:Label ID="lblcontact" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtcontact" runat="server" class="form-control" placeholder="Enter Guest Contact No."></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>



                            


                                        <div class="col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="Save & Continue" class="btn-form1-submit mt-15" OnClick="Button1_Click"/>
                                        </div>
                                    </div>
                             
                            </div>


                             <div class="text">
                       
                            
                            <br />
                              <h3>Privacy Policies</h3>
                                <p>*** 12 Noon Check In / 12 Noon Check Out.</p>  
                                <p>*** 2 Children Up to 12 Years Free Without Extra Bed.</p>  
                                 <p>*** Special Discount For Group Tours & Long Stay.</p> 
                                 <p>*** Special Discount For Wedding Parties.</p> 
                                 <p>*** All GIT's On Compulsory Half Board Basis.</p> 
                                   <p>*** GIT Tariff Are Applicable For More Than 15 Rooms.</p> 
                                     <p>*** Extended Check Out Available On Request Subject To Availability.</p> 
                                       <p>*** One Day Tariff Retention Will Be Charged For No Show Or Cancellation Within 24 Hrs.</p> 
                                    <p>*** Tariff And Taxes Are Subjected To Change Without Any Prior Notice.</p> 



                        </div>


                               <div class="text">
                       
                            
                            <br />
                              <h3>Hotel Return & Refund Policy</h3>
                              <h4>Booking Cancellation and Refunds</h4>
                                <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Cancellation by Guest</p>  
                                <p>Cancellations made more than 7 days before check-in: 100% refund of the booking amount, after deducting any payment gateway charges (if applicable).
                                    Cancellations made 3–7 days before check-in: 50% refund of the booking amount.
                                    Cancellations made less than 48 hours before check-in: No refund.
                                    Refund eligibility may vary for promotional, discounted, or non-refundable bookings.</p>  
                                  
                                  <br />
 
                    <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">No-Show Policy</p>  
                        <p>If the guest does not arrive on the scheduled check-in date and has not informed the hotel in advance, the booking will be treated as a "no-show," and no refund will be issued.</p>

                        <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Hotel-Initiated Cancellation</p>  
                        <p>If the hotel is unable to honor a confirmed reservation due to unforeseen circumstances, the guest will receive a full refund of all amounts paid.</p>


                            <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Refund Processing</p>  
                        <p>Approved refunds will be initiated through the original payment method used during booking.
                            Refund processing typically takes 7–14 business days, depending on the payment gateway, bank, and card issuer.
                            The hotel is not responsible for delays caused by banks or payment service providers.</p>


                              <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Modification of Reservations</p>  
                        <p>Reservation changes are subject to room availability and applicable rate differences.
Certain modifications may incur additional charges.</p>


 <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Payment Gateway Transactions</p>  
                        <p>All online payments are processed through a secure payment gateway.
In the event of duplicate payments or technical errors resulting in excess charges, the excess amount will be refunded after verification.</p>


 <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold">Contact for Refund Requests</p>  
                        <p>For cancellation or refund-related queries, guests may contact:</p>
                        <p>Hotel Name: The Travotel Suites</p>
                        <p>Email: <b>info@travotelhotels.com</b></p>
                        <p>Phone: +919503044445</p>
                        <p>Address: Plot no 4 Karve nagar opposite to Sonegaon Police station wardha road Nagpur 25</p>


                        <br />

                           <p style="font-size: medium; font-family: 'Gideon Roman', cursive; font-weight: bold; color: #0066FF;">Important Notes</p>  
                        <p style="color: #FF0066">Refunds will only be made to the original payment source.
                            Government taxes and third-party service fees may be non-refundable where applicable.
                            By completing a booking, guests agree to this cancellation and refund policy.</p>



                        </div>

                        </div>
					
                </div>
                
                
                
                
              
            </div>





        </div>
    </section>



        <div class="row">
                <div class="col-md-12   ">
                    
				 <div class="booking-box">
                            <div class="head-box">
                            <h4>Must Read Rules</h4>
                                <h6>Guest Profile</h6>
                                <label>Primary Guest should be atleast 18 years of age.</label></br>
                                 <label>Unmarried couples are not allowed.</label></br>
                                   <label>Primary guest should be atleast 18 years of age</label></br>

                                     <h6>ID Proof Related</h6>
                                <label>Aadhaar, Driving License and Govt. ID are accepted as ID proof(s)Local ids not allowed.</label></br>

                                  <h6>Smoking/Alcohol consumption Rules</h6>
                                <label>Alcohol consumption is not allowed within the property premises.</label></br>
                                <label>Smoking within the premises is allowed.</label></br>

                                <h6>Property Accessibility</h6>
                                <label>This property is accessible to guests who use a wheelchair.</label></br>

                                   <h6>Pet(s) Related</h6>
                                <label>Pets are not allowed.</label></br>
                                <label>There are no pets living on the property.</label></br>

                                <h6>Other Rules</h6>
                                <label>Guests are requested not to invite outside visitors in the room during their stay.
Unmarried couples are not allowed , please carry valid id proof Local persons are not allowed to stay.</label></br>


                                <h6>Infant Policy</h6>
                                <label>1 infant (0-2 yrs) per room included without counting in total room capacity.</label></br>


                                <h6>Child & Extra Bed Policy</h6>
                                <label>An extra bed will be provided to accommodate any child included in the booking for a charge mentioned below.</label></br>
                                  <label><b style="font-size: medium; color: #990033">INR 800.00 </b> will be charged for an extra mattress per child. (To be paid at the property)
An extra bed will be provided to accommodate any additional guest included in the booking for a charge mentioned below.</label></br>
<label><b style="font-size: medium; color: #990033">INR 800.00  </b>  will be charged for an extra mattress per guest. (To be paid at the property)</label></br>


                            </div>
                           
                        </div>
					
                </div>
            </div>



   
 </form>
    
 
      <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="footer-column footer-about">
                            <h3 class="footer-title">About Hotel</h3>
                            <p class="footer-about-text">The Travotel Suites, Nagpur is a top rated hotel ideally located on Wardha Road, just minutes from the Airport and Mihan. Its prime location makes it a top choice for business travelers, corporate guests, transit passengers, and families, offering unmatched convenience and connectivity to Nagpur’s commercial hubs.</p>

                            
                        </div>
                    </div>
                 
                   <div class="col-md-3">
                        <div class="footer-column footer-explore clearfix">
                            <h3 class="footer-title">Quick Links</h3>
                      <a href="about.html"><p class="footer-contact-mail">About Travotel Hotel</p></a><br />
                         <a href="facilites.html"><p class="footer-contact-mail">Our Facilities</p></a><br />
                         <a href="gallery.html"><p class="footer-contact-mail">Photo Gallery</p></a><br />
                         <a href="contact.aspx"><p class="footer-contact-mail">Contact Us</p></a><br /> 
                         <a href="room_book.aspx"><p class="footer-contact-mail">Book Now</p></a>
           
                        </div>
                    </div>


                     <div class="col-md-3">
                        <div class="footer-column footer-explore clearfix">
                            <h3 class="footer-title">Support</h3>
                     <a href="policies.html"><p class="footer-contact-mail">Privacy Policy</p></a><br />
                             <a href="returnpolicy.html"><p class="footer-contact-mail">Return & Refund Policy</p></a><br />
                             <a href="terms.html"><p class="footer-contact-mail">Terms & Conditions</p></a><br />
           
                        </div>
                    </div>
                   
                    
            <div class="col-sm-3">
                        <div class="footer-column footer-contact">
                            <h3 class="footer-title">Contact</h3>
                            <p class="footer-contact-text">Plot no 4 Karve nagar opp to Sonegaon police station Wardha road Nagpur MH 440025</p>
                            <div class="footer-contact-info">
                                <p class="footer-contact-phone"><b>Helpdesk :</b> +91 9503044445</p>
                                <p class="footer-contact-phone"><b>Email :</b> info@travotelhotels.com</p>
                            </div>
                            <div class="footer-about-social-list">
                                <a href="https://www.instagram.com/accounts/login/"><i class="ti-instagram"></i></a>
                                <a href="https://twitter.com/"><i class="ti-twitter"></i></a>
                                <a href="https://www.youtube.com/"><i class="ti-youtube"></i></a>
                                <a href="https://www.facebook.com/login/"><i class="ti-facebook"></i></a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-bottom-inner">
                            <p class="footer-bottom-copy-right">© Copyright 2026 Travotel Hotels  <a href="https://www.skyfalltechnology.com" alt="" target="_blank">Design by Skyfall Technology</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>  

    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.min.js"></script>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/jquery.isotope.v3.0.2.js"></script>
    <script src="js/pace.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrollIt.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/YouTubePopUp.js"></script>
    <script src="js/select2.js"></script>
    <script src="js/datepicker.js"></script>
    <script src="js/smooth-scroll.min.js"></script>
    <script src="js/custom.js"></script>

     <!-- Elfsight WhatsApp Chat | Untitled WhatsApp Chat -->
<script src="https://elfsightcdn.com/platform.js" async></script>
<div class="elfsight-app-833b3e21-4e7e-4755-959f-fd7eea7aef02" data-elfsight-app-lazy></div>





</body>
</html>