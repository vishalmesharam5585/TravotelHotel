<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="zxx">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>TRAVOTEL HOTEL</title>
    <link rel="shortcut icon" href="img/favicon.png" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Barlow&amp;family=Barlow+Condensed&amp;family=Gilda+Display&amp;display=swap">
    <link rel="stylesheet" href="css/plugins.css" />
    <link rel="stylesheet" href="css/style.css" />
	<link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Livvic:wght@500;600;700&amp;display=swap" rel="stylesheet">
<link rel='stylesheet' href='https://netdna-ssl.com/'>

<link rel="preconnect" href="https://fonts.googleapis.com/">
<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gideon+Roman&amp;display=swap" rel="stylesheet">
<link rel='stylesheet' href='../cdnjs.cloudflare.com/ajax/libs/lightgallery/1.2.21/css/lightgallery.min.css'>
       <link rel="preconnect" href="https://fonts.googleapis.com/"><link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,500;1,600&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Poppins:400,500%7CTeko:300,400,500%7CMaven+Pro:500">
	<link rel="stylesheet" href="../cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
       


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
    </nav>    <!-- Slider -->
    <header class="header slider-fade">
       <div class="owl-carousel owl-theme">
                <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                <div class="text-center item bg-img" data-overlay-dark="0" data-background="img/main.png">
                    <div class="v-middle caption">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 offset-md-1">
                                    <span>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                    </span>
                                    <h4>Luxury Hotel & Best Resort</h4>
                                    <h1>Enjoy a Luxury Experience</h1>
                              <!--      <div class="butn-light mt-30 mb-30"> <a href="#" data-scroll-nav="1"><span>Rooms & Suites</span></a> </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center item bg-img" data-overlay-dark="2" data-background="img/2.jpeg">
                    <div class="v-middle caption">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 offset-md-1">
                                    <span>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                    </span>
                                    <h4>Unique Place to Relax & Enjoy</h4>
                                    <h1>The Perfect Base For You</h1>
                                 <!--   <div class="butn-light mt-30 mb-30"> <a href="#" data-scroll-nav="1"><span>Rooms & Suites</span></a> </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center item bg-img" data-overlay-dark="3" data-background="img/3.jpeg">
                    <div class="v-middle caption">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 offset-md-1">
                                    <span>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                    </span>
                                    <h4>The Ultimate Luxury Experience</h4>
                                    <h1>Enjoy The Best Moments of Life</h1>
                                  <!--  <div class="butn-light mt-30 mb-30"> <a href="#" data-scroll-nav="1"><span>Rooms & Suites</span></a> </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                 <div class="text-center item bg-img" data-overlay-dark="3" data-background="img/4.jpeg">
                    <div class="v-middle caption">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-10 offset-md-1">
                                    <span>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                        <i class="star-rating"></i>
                                    </span>
                                    <h4>The Ultimate Luxury Experience</h4>
                                    <h1>Enjoy The Best Moments of Life</h1>
                                  <!--  <div class="butn-light mt-30 mb-30"> <a href="#" data-scroll-nav="1"><span>Rooms & Suites</span></a> </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        <!-- slider reservation -->
        <div class="reservation">
            <a href="tel:9503044445">
                <div class="icon d-flex justify-content-center align-items-center">
                    <i class="flaticon-call"></i>
                </div>
                <div class="call"><span>+91 9503044445</span> <br>Reservation</div>
            </a>
        </div>
    </header>

     
    <!-- Booking Search -->
    <div class="booking-wrapper">
            <div class="container">
                <div class="booking-inner clearfix">
                   <form action="#" class="form1 clearfix" runat="server">
                           <div class="col1 c1">
                                <div class="input1_wrapper">
                                    <label>Check in</label>
                                    <div class="input1_inner">
                                        <input type="text" id="txtCheckIn" class="form-control input datepicker" placeholder="Check in" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="col1 c2">
                                <div class="input1_wrapper">
                                    <label>Check out</label>
                                    <div class="input1_inner">
                                        <input type="text" id="txtCheckOut" class="form-control input datepicker" placeholder="Check out" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="col2 c3">
                                <div class="select1_wrapper">
                                    <label>Adults</label>
                                    <div class="select1_inner">
                                        <select class="select2 select" style="width: 100%" id="ddladult" runat="server">
                                            <option value="1">1 Adult</option>
                                            <option value="2">2 Adults</option>
                                            <option value="3">3 Adults</option>
                                            <option value="4">4 Adults</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col2 c4">
                                <div class="select1_wrapper">
                                    <label>Children</label>
                                    <div class="select1_inner">
                                        <select class="select2 select" style="width: 100%" id="ddlchild" runat="server">
                                            <option value="1">Children</option>
                                            <option value="1">1 Child</option>
                                            <option value="2">2 Children</option>
                                            <option value="3">3 Children</option>
                                            <option value="4">4 Children</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col2 c5">
                                <div class="select1_wrapper">
                                    <label>Rooms</label>
                                    <div class="select1_inner">
                                        <select class="select2 select" style="width: 100%" id="ddlroom" runat="server">
                                            <option value="1">1 Room</option>
                                            <option value="2">2 Rooms</option>
                                            <option value="3">3 Rooms</option>
                                            <option value="4">4 Rooms</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="col3 c6">
                            <asp:Button ID="Button1" runat="server" Text="Check Availability"  class="btn-form1-submit" OnClick="Button1_Click"/>
                        </div>
                   </form>
                </div>
            </div>
    </div>

    
    <!-- About -->
	<div class="empty-space"></div>
    <section class="about">
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
                        <div class="section-subtitle">TRAVOTEL HOTEL</div>
                        <div class="#" style="font-size: xx-large">Enjoy a Luxury Experience</div>
                        <p>The Travotel Suites, Nagpur is a top rated hotel ideally located on Wardha Road, just minutes from the Airport and Mihan. Its prime location makes it a top choice for business travelers, corporate guests, transit passengers, and families, offering unmatched convenience and connectivity to Nagpur’s commercial hubs.</p>
                        <p>The hotel features spacious, well-designed rooms with contemporary interiors, plush bedding, dedicated workspaces, high-speed Wi-Fi, and modern amenities to ensure a relaxing and productive stay. Whether you’re on a short business trip, attending meetings at MIHAN, or enjoying a longer stay, the rooms provide both comfort and functionality.</p>
					    <p>
                                    <button><a href="about.html">Read more...</a> </button>
                                </p>
                        <!-- call -->
                        <div class="reservations">
                            <div class="icon"><span class="flaticon-call"></span></div>
                            <div class="text">
                                <p>Reservation</p> <a href="tel:+91-9503044445">+91-9503044445</a>
                            </div>
                        </div>
                    </div>
                    <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
                        <img src="img/hotel1.png" alt="" class="mt-90 mb-30">
                    </div>
                    <div class="col col-md-3 animate-box" data-animate-effect="fadeInUp">
                        <img src="img/hotel2.png" alt="">
                    </div>
                </div>
        </div>
    </section>
 
    <section class="rooms1 section-padding bg-cream" data-scroll-index="1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-subtitle"> Travotel Hotel</div>
                    <div class="section-title">Rooms & Suites</div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="item">
                        <div class="position-re o-hidden"> <img src="img/Standard%20rooms/6.JPG" alt=""> </div> <span class="category"><a href="standard_book.aspx">Book</a></span>
                        <div class="con">
                            
                            <h5><a href="standard_book.aspx">Standard</a> </h5>
                            <div class="line"></div>
                            <div class="row facilities">
                                <div class="col col-md-7">
                                    <ul>
                                        <li><i class="flaticon-bed"></i></li>
                                        <li><i class="flaticon-bath"></i></li>
                                        <li><i class="flaticon-breakfast"></i></li>
                                        <li><i class="flaticon-towel"></i></li>
                                    </ul>
                                </div>
                                <div class="col col-md-5 text-right">
                                    <div class="permalink"><a href="standard_book.aspx">Details <i class="ti-arrow-right"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item">
                        <div class="position-re o-hidden"> <img src="img/Deluxe%20room/16.JPG" alt=""> </div> <span class="category"><a href="deluxe_book.aspx">Book</a></span>
                        <div class="con">
                          
                            <h5><a href="deluxe_book.aspx">Deluxe</a></h5>
                            <div class="line"></div>
                            <div class="row facilities">
                                <div class="col col-md-7">
                                    <ul>
                                        <li><i class="flaticon-bed"></i></li>
                                        <li><i class="flaticon-bath"></i></li>
                                        <li><i class="flaticon-breakfast"></i></li>
                                        <li><i class="flaticon-towel"></i></li>
                                    </ul>
                                </div>
                                <div class="col col-md-5 text-right">
                                    <div class="permalink"><a href="deluxe_book.aspx">Details <i class="ti-arrow-right"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="item">
                        <div class="position-re o-hidden"> <img src="img/Suite%20rooms/7.JPG" alt=""> </div> <span class="category"><a href="suite_book.aspx">Book</a></span>
                        <div class="con"> 
                           
                            <h5><a href="suite_book.aspx">Suite</a></h5>
                            <div class="line"></div>
                            <div class="row facilities">
                                <div class="col col-md-7">
                                    <ul>
                                        <li><i class="flaticon-bed"></i></li>
                                        <li><i class="flaticon-bath"></i></li>
                                        <li><i class="flaticon-breakfast"></i></li>
                                        <li><i class="flaticon-towel"></i></li>
                                    </ul>
                                </div>
                                <div class="col col-md-5 text-right">
                                    <div class="permalink"><a href="suite_book.aspx">Details <i class="ti-arrow-right"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12" align="center">
                        <div class="item">
                            <div class="position-re o-hidden"> <img src="img/4.jpeg"> </div> <%--<span class="category"><a href="#">Book</a></span>--%>
                            <div class="con">
                            
                                <h5><a href="########">Restaurant</a></h5>
                                <div class="line"></div>
                                <div class="row facilities">
                                
                                  <%--  <div class="col col-md-5 text-right">
                                        <div class="permalink"><a href="######">Details <i class="ti-arrow-right"></i></a></div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
               
            </div>
        </div>
    </section>
 
     <section class="video-wrapper video section-padding bg-img bg-fixed" data-overlay-dark="3" data-background="img/vdo.png">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 offset-md-2 text-center">
                           <span><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i></span>
                            <div class="section-subtitle"><span>Travotel Hotel</span></div>
                            <div class="section-title"><span>Experience the Art of Luxury</span></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="text-center col-md-12">
                          <!--  <a class="vid" href="img/vdo.png">-->
                              <a class="vid" href="#">
                          <!--  <div class="vid-butn">
                                <span class="icon">
                                  <!--  <i class="ti-control-play"></i>-->
                                </span>
                            </div>-->
                        </a>
                        </div>

                    </div>
               
        </section>
     <!--Facilties -->
	<div class="empty-space"></div>
       <section class="facilties ">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-subtitle">Our Services</div>
                        <div class="section-title">Hotel Facilities</div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-sm-3">
                        <div class="single-facility animate-box" data-animate-effect="fadeInUp">
                             <img src="img/cab.png">
                             <h5>Rent A Cab</h5>
                        </div>

                      


                    </div>
                   <div class="col-sm-3">
                        <div class="single-facility animate-box" data-animate-effect="fadeInUp">
                             <img src="img/parking.png">
                             <h5>Parking Space</h5>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="single-facility animate-box" data-animate-effect="fadeInUp">
                               <img src="img/services.png">
                               <h5>Room Service</h5>
                        </div>
                    </div>
                <!--   <div class="col-sm-3">
                        <div class="single-facility animate-box" data-animate-effect="fadeInUp">
                            <i class="fa-solid fa-bath"></i>
                            <h5>Glass Bathroom</h5>
                     
                            <div class="facility-shape"> <span class="flaticon-swimming"></span> </div>
                        </div>
                    </div>-->
                  <div class="col-sm-3">
                        <div class="single-facility animate-box" data-animate-effect="fadeInUp">
                             <img src="img/WiFi.png">
                            <h5>Free High Speed WiFi</h5>
                     
                          
                        </div>
                    </div>
               
                  
                       
                </div>

                     <div class="reservations">
                             
                            <div class="text">
                                <p></p> <a href="facilites.html">View More Facilities</a>
                            </div>
                        </div>

            </div>

        

        </section>
	<div class="empty-space"></div>
     <!--Testiominals -->
    <section class="testimonials">
        <div class="background bg-img bg-fixed section-padding pb-0" data-background="img/2.jpg" data-overlay-dark="0">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="testimonials-box">
                            <div class="head-box">
                                <h6>Testimonials</h6>
                                <h4>What Client's Say?</h4>
                                <div class="line"></div>
                            </div>
                            <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <span class="quote"><img src="img/quot.png" alt=""></span>
                                    <p>The staff are friendly, helpful, and accommodating. The rooms are spacious, clean, and well-furnished. The bedding is luxurious and comfortable, and the bathrooms are spotlessly clean.
The location of The Hotel that is Airport(Nagpur) is also convenient, as it's close to a variety of shopping, dining, and entertainment venues.
Overall felt very Satisfied with my stay.</p>
                                    <div class="info">
                                        <div class="author-img"> <img src="img/clients/1.png" alt=""> </div>
                                        <div class="cont"> <span><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i></span>
                                            <h6>Sanjay Sharma</h6> <span>Guest review</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <span class="quote"><img src="img/quot.png" alt=""></span>
                                    <p>Best hotel with modern aminities in near Airport area as well as in Nagpur
Good breakfast continental</p>
                                    <div class="info">
                                        <div class="author-img"> <img src="img/clients/3.png" alt=""> </div>
                                        <div class="cont"> <span><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i></span>
                                            <h6>Rohit Vaidya</h6> <span>Guest review</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <span class="quote"><img src="img/quot.png" alt=""></span>
                                    <p>Nice breakfast co-operated staff. room & housekeeping very good.</p>
                                    <div class="info">
                                        <div class="author-img"> <img src="img/clients/2.png" alt=""> </div>
                                        <div class="cont"> <span><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i><i class="star-rating"></i></span>
                                            <h6>Sachin Jadhav</h6> <span>Guest review</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 
 
    <!-- Clients -->
 <div class="float-container">
<a href="room_book.aspx"> Book now</a>
<a href="tel:+91 9503044445">Get in touch</a>
<a href="Mailto:info@travotelhotels.com">Send us a message</a>
</div>   
    
    
    
  
 
<!-- /GetButton.io widget -->
    <!-- Footer -->
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
    </footer>   <!-- jQuery -->
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