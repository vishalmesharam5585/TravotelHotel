<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deluxe_book.aspx.cs" Inherits="deluxe_book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Travotel Deluxe Room</title>
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
                <div class="col-md-8">
                    
				
					<div class="room_d_main_text">
                                <div class="room_details_img owl-carousel" style="width: 700px; ">
                                    <div class="item">
                                       <img src="img/Deluxe%20room/1.JPG" />
                                    </div>
                                    <div class="item">
                                       <img src="img/Deluxe%20room/2.JPG" />
                                    </div>
                                    <div class="item">
                                        <img src="img/Deluxe%20room/3.JPG" />
                                    </div>
                                     <div class="item">
                                      <img src="img/Deluxe%20room/4.JPG" />
                                    </div>
									 <div class="item">
                                        <img src="img/Deluxe%20room/5.JPG" />
                                    </div>


                                    <div class="item">
                                       <img src="img/Deluxe%20room/6.JPG" />
                                    </div>
                                    <div class="item">
                                       <img src="img/Deluxe%20room/7.JPG" />
                                    </div>
                                    <div class="item">
                                        <img src="img/Deluxe%20room/8.JPG" />
                                    </div>
                                     <div class="item">
                                      <img src="img/Deluxe%20room/9.JPG" />
                                    </div>
									 <div class="item">
                                        <img src="img/Deluxe%20room/10.JPG" />
                                    </div>



                                    <div class="item">
                                       <img src="img/Deluxe%20room/11.JPG" />
                                    </div>
                                    <div class="item">
                                       <img src="img/Deluxe%20room/12.JPG" />
                                    </div>
                                    <div class="item">
                                        <img src="img/Deluxe%20room/13.JPG" />
                                    </div>
                                     <div class="item">
                                      <img src="img/Deluxe%20room/14.JPG" />
                                    </div>
									 <div class="item">
                                        <img src="img/Deluxe%20room/15.JPG" />
                                    </div>



                                    <div class="item">
                                       <img src="img/Deluxe%20room/16.JPG" />
                                    </div>
                                    <div class="item">
                                       <img src="img/Deluxe%20room/17.JPG" />
                                    </div>
                                    <div class="item">
                                        <img src="img/Deluxe%20room/18.JPG" />
                                    </div>
                                     <div class="item">
                                      <img src="img/Deluxe%20room/19.JPG" />
                                    </div>
									 <div class="item">
                                        <img src="img/Deluxe%20room/20.JPG" />
                                    </div>
                                </div>
								</div>
                    
              
                
				<div class="section-subtitle">The Travotel Hotel</div>
                    <div class="section-title">Deluxe Room</div>
                    <p>The styled decor of Deluxe Room offers a great sense of warmth & coziness. Find yourself in an environment of uncompromising comfort and splendid view. A sophisticated bedroom entices you to relax in luxury. Enjoy a complimentary beverage on arrival. Soothe your tired muscles with a shower in our luxuriously appointed bathroom. The chic décor & state of art amenities make your stay a sheer joy. Make a stop in our Deluxe Room & avail the ace hospitality services that we offer</p>
                   
                      
                       
                            <h6>Room Size</h6>
                            <p>The size of the Deluxe Room is around 200 sq. ft. It offers both Twin Bed and King Bed options.</p>

                            <h6>Room Amenities</h6>
                            <p>Bottled Water, Tea/Coffee maker with suplies, Daily housekeeping, In Room Dining, LED TV, AC. </p>

                            <h6>Room Features</h6>
                            <p>Study Table wit Reading Lamp, Closet, Mirror, Hangers, Sofa, Chair, Intercom</p>

                             <h6>Bathroom Have</h6>
                            <p>Shaving Mirror, Geyser, Shower Cap, Western Toilet Seat, Toilet Paper, Shower, Toiletries, Towels, Dental Kit, Shaving Kit,  Comb, Slippers</p>
                    
                      
                            <div class="butn-dark mt-15 mb-30"> 
                               <asp:Button ID="Button2" runat="server" Text="Check Availability"  class="btn-form1-submit mt-15" OnClick="Button2_Click"/>
                            </div>
                         </div>
                
                
                
                
                <div class="col-md-4 ">
                    <h5>Amenities</h5>
                    <ul class="list-unstyled page-list mb-30">
                        <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-bath"></i> </div>
                            <div class="page-list-text">
                                <p> Attached Glass Bathroom</p>
                            </div>
                        </li>
                        <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-wifi"></i> </div>
                            <div class="page-list-text">
                                <p>Free Wifi</p>
                            </div>
                        </li>
                        <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-user-doctor"></i> </div>
                            <div class="page-list-text">
                                <p>Doctor on Call</p>
                            </div>
                        </li>
                        <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-utensils"></i> </div>
                            <div class="page-list-text">
                                <p>Breakfast</p>
                            </div>
                        </li>
                        <li>
                            <div class="page-list-icon"><i class="fa-solid fa-toilet-paper"></i>  </div>
                            <div class="page-list-text">
                                <p>Towels</p>
                            </div>
                        </li>
                        <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-fan"></i> </div>
                            <div class="page-list-text">
                                <p>Furnished Air Conditioned </p>
                            </div>
                        </li>
						
						
		  <li>
                            <div class="page-list-icon"> <i class="fa-solid fa-tv"></i> </div>
                            <div class="page-list-text">
                                <p>32” LED TV with All Satellite Channels</p>
                            </div>
                        </li>				
						
				
						
                    </ul>
              


                  
                        <div class="booking-box">
                            <div class="head-box">
                                <h6>Rooms & Suites</h6>
                                <h4>Book Yout Room</h4>
                            </div>
                            <div class="booking-inner clearfix">
                                <form action="#" class="form1 clearfix">
                                    <div class="row">
                                        <div class="col-md-12">
                                        <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Check in</label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtCheckIn" class="form-control input datepicker" placeholder="Check in" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="input1_wrapper">
                                                <label>Check out</label>
                                                <div class="input1_inner">
                                                    <asp:TextBox ID="txtCheckOut" runat="server" class="form-control input datepicker" placeholder="Check out"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="select1_wrapper">
                                                <label>Adults</label>

                                              
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
                                        <div class="col-md-12">
                                            <div class="select1_wrapper">
                                                <label>Children</label>
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
                                        <div class="col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="Check Availability"  class="btn-form1-submit mt-15" OnClick="Button1_Click"/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                  
                      </div>
            </div>





        </div>
    </section>
 
    
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
    <script src="js/jqu3ery.isotope.v3.0.2.js"></script>
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