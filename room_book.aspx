<%@ Page Language="C#" AutoEventWireup="true" CodeFile="room_book.aspx.cs" Inherits="room_book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Standard Room</title>
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
                    <h1>Explore Rooms</h1>
                </div>
            </div>
        </div>
    </div>

    <form runat="server">
      <section class="section-margin section-margin--small">
    <div class="container">
      <div class="section-intro text-center pb-30px">
        <div class="section-intro__style">
        <%--  <img src="img/bed-icon.png" alt="">--%>
        </div>
        <h2></h2>
        </br>
         <div class="section-title">Explore Our Rooms</div>
      </div>

      <div class="row pb-4">
        <div class="col-md-6 col-xl-4 mb-5">
          <div class="card card-explore">
            <div class="card-explore__img">
              <img class="card-img" src="img/Standard rooms/6.JPG" alt="">
            </div>
            <div class="card-body">
              <h3 class="card-explore__price"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <sub>/ Per Night</sub></h3>
              <h4 class="card-explore__title"><a href="#">Standard Room</a></h4>
             <p><b>Room Size :</b> 150 sq.ft. </p>
                <p><b>Bed :</b> Twin Bed & King Bed both </p>
                 <p><b>Room Amenities :</b> Bottled Water, Tea/Coffee maker with suplies, Daily housekeeping, In Room Dining, LED TV, AC.</p>
                  <p><b>Room Features</b> Study Table with Reading Lamp, Closet, Mirror, Hangers, Chair, Intercom </p>
                   <p><b>Bathroom  Have :</b> Shaving Mirror, Geyser Shower Cap, Western Toilet Seat, Toilet Paper, Shower, Toiletries, Dental Kit, Shaving Kit, Comp, Slippers </p>
              <br />
               <div class="butn-dark mt-15 mb-30"> 
                <asp:Button ID="Button1" runat="server" Text="BOOK NOW"  class="btn-form1-submit mt-15" OnClick="Button1_Click"/>
                 </div>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-xl-4 mb-5">
          <div class="card card-explore">
            <div class="card-explore__img">
              <img class="card-img" src="img/Deluxe room/16.JPG" alt="">
            </div>
            <div class="card-body">
              <h3 class="card-explore__price"><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <sub>/ Per Night</sub></h3>
              <h4 class="card-explore__title"><a href="#">Deluxe Room</a></h4>
              <p><b>Room Size :</b> 200 sq.ft. </p>
                <p><b>Bed :</b> Twin Bed & King Bed both </p>
                 <p><b>Room Amenities :</b> Bottled Water, Tea/Coffee maker with suplies, Daily housekeeping, In Room Dining, LED TV, AC.</p>
                  <p><b>Room Features</b> Study Table with Reading Lamp, Closet, Mirror, Hangers, Chair, Intercom </p>
                   <p><b>Bathroom  Have :</b> Shaving Mirror, Geyser Shower Cap, Western Toilet Seat, Toilet Paper, Shower, Toiletries, Dental Kit, Shaving Kit, Comp, Slippers </p>
               <br />
               <div class="butn-dark mt-15 mb-30"> 
                <asp:Button ID="Button2" runat="server" Text="BOOK NOW"  class="btn-form1-submit mt-15" OnClick="Button2_Click"/>
                 </div>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-xl-4 mb-5">
          <div class="card card-explore">
            <div class="card-explore__img">
             <img class="card-img" src="img/Suite rooms/7.JPG" alt="">
            </div>
            <div class="card-body">
              <h3 class="card-explore__price"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <sub>/ Per Night</sub></h3>
              <h4 class="card-explore__title"><a href="#">Suite</a></h4>
                  <p><b>Room Size :</b> 240 sq.ft. </p>
                <p><b>Bed :</b> Twin Bed & King Bed both </p>
                 <p><b>Room Amenities :</b> Bottled Water, Tea/Coffee maker with suplies, Daily housekeeping, In Room Dining, LED TV, AC.</p>
                  <p><b>Room Features</b> Study Table with Reading Lamp, Closet, Mirror, Hangers, Chair, Intercom </p>
                   <p><b>Bathroom  Have :</b> Bathtub, Bubble Bath, Shaving Mirror, Geyser Shower Cap, Western Toilet Seat, Toilet Paper, Shower, Toiletries, Dental Kit, Shaving Kit, Comp, Slippers </p>
              
               <div class="butn-dark mt-15 mb-30"> 
                <asp:Button ID="Button3" runat="server" Text="BOOK NOW"  class="btn-form1-submit mt-15" OnClick="Button3_Click"/>
                 </div>
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
