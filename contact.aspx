<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>
<html lang="zxx">
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Contact - Travotel Hotel</title>
    <link rel="shortcut icon" href="img/favicon.png" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Barlow&amp;family=Barlow+Condensed&amp;family=Gilda+Display&amp;display=swap">
    <link rel="stylesheet" href="css/plugins.css" /> 
    <link rel="stylesheet" href="css/style.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Livvic:wght@500;600;700&amp;display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com/"><link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,500;1,600&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins:400,500%7CTeko:300,400,500%7CMaven+Pro:500">
	<link rel="stylesheet" href="../cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
      <link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gideon+Roman&amp;display=swap" rel="stylesheet"> 
</head>
<body>
<form runat="server">
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
                <a href="Default.aspx">
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
                    <h5>Travotel Hotel</h5>
                    <h1>Contact Us</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- About -->
    <section class="about section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-30 animate-box" data-animate-effect="fadeInUp"> 
                    <span>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                        <i class="star-rating"></i>
                    </span>
                    <div class="section-subtitle">Travotel Hotel</div>
                    <div class="section-title">Contact Us</div>
                    <p>Travotel Hotel, an executive hotel welcomes business & leisure travellers for experiencing the Heritage of Indian hospitality .Here you will get world class accommodation within your budget.</p>
                   
                    </br>
                     </br>
				  <!-- reservation -->
                    <div class="reservations">
                        <div class="icon"><span class="flaticon-call"></span></div>
                        <div class="text">
                            <p>Reservation</p> <a href="tel:9503044445">+91 9503044445</a>
                        </div>
                    </div>
                    </br>
                  
                          <div class="reservations">
                        <div class="icon"><span class="flaticon"></span></div>
                        <div class="text">
                            <p>Email :</p> <a href="tel:9503044445">info@travotelhotels.com</a>
                        </div>
                    </div>


                </div>
                <div class="col col-md-6 animate-box" data-animate-effect="fadeInUp">
                
                 	 <div class="booking-box">
                            <div class="head-box">
                                
                                <h4>Contact Us</h4>
                            </div>
                            <div class="booking-inner clearfix">
                              
                                    <div class="row">
 


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

                                            
                                        
                                         <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>City</label><asp:Label ID="lblcity" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="Enter City"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>


                                          <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Email</label><asp:Label ID="lblemail" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Enter Guest Email"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Contact No.</label><asp:Label ID="lblcontact" runat="server" Text="*" Font-Size="XX-Large" ForeColor="#FF0066" Font-Bold="True" Visible="False"></asp:Label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtcontact" runat="server" class="form-control" placeholder="Enter Guest Contact No."></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>



                            


                                        <div class="col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="Save & Continue" class="btn-form1-submit mt-15" />
                                        </div>
                                    </div>
                             
                            </div>
                        </div>
                  
                 
                 </div> 
               
            </div>
        </div>
    </section>
   
  
    
          <div class="row">
                    <div class="col-sm-12">
       <div class="col-sm-12">
       <div class="gmap_canvas">
       <iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=1600&amp;height=400&amp;hl=en&amp;q=The Travotel Suites&amp;t=p&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
       </div>
       <style>.mapouter{position:relative;text-align:right;width:1600px;height:400px;}.gmap_canvas {overflow:hidden;background:none!important;width:1600px;height:400px;}.gmap_iframe {width:1600px!important;height:400px!important;}</style>
       </div>
       </div>
       </div>
 
    
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
    </footer>    <!-- jQuery --> 
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

    </form>


     <!-- Elfsight WhatsApp Chat | Untitled WhatsApp Chat -->
<script src="https://elfsightcdn.com/platform.js" async></script>
<div class="elfsight-app-833b3e21-4e7e-4755-959f-fd7eea7aef02" data-elfsight-app-lazy></div>





</body>
 
</html>