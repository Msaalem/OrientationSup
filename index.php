<?php
session_start();
error_reporting(0);
ini_set('display_errors', 0);
?>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="site/images/favicon.ico" type="site/image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:300,400,700%7CPoppins:300,400,500,700,900">
    <link rel="stylesheet" href="site/css/bootstrap.css">
    <link rel="stylesheet" href="site/css/fonts.css">
    <link rel="stylesheet" href="site/css/style.css">

    <style>
    @import url('https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap');
    .ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}
    .p
      {
        color:rgb(20, 50, 185);
        font-size: 140px;
        font-weight: 100;
        font-family: Rock Salt;
      }
      .p2{
        font-size: 120px;
      }
    </style>
     <style>
         nav ul ul{
  position: absolute;
  opacity: 0;
  visibility: hidden; 
} 
.button-4{
   border: none;
   background: none;
   color:aliceblue;
   padding: auto;
   font-size: 20px;
}
nav ul li:hover > ul{
  top: 60px;
  opacity: 1;
  visibility: visible;
  transition: .3s linear;
  padding: 5px;

}
    </style>
  </head>
  <body>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div> 
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
      <header class="section page-header">
        <!--RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-classic" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="46px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle=".rd-navbar-collapse"><span></span></div>
            <div class="rd-navbar-aside-outer rd-navbar-collapse bg-gray-dark">
              <div class="rd-navbar-aside">
              
              </div>
            </div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <!--RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!--RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!--RD Navbar Brand-->
                  <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="index.php"><img class="brand-logo-dark" src="site/images/logo-default-200x34.png" alt="" width="100" height="17"/><img class="brand-logo-light" src="site/images/logo-inverse-200x34.png" alt="" width="100" height="17"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element"> 
                  <div class="rd-navbar-nav-wrap">
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="index.php">Home</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="site/login.php">login</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="site/contacts.php">Contact</a>
                      </li>
                     
                      
                      
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <!--Main section-->
      <section class="section main-section parallax-scene-js" style="background:url('site/images/bg-1-1700x803.jpg') no-repeat center center; background-size:cover;">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-8 col-12">
              <div class="main-decorated-box text-center text-xl-left">
                <h1 class="text-white text-xl-center wow slideInRight" data-wow-delay=".3s"><span class="align-top offset-top-30 d-inline-block font-weight-light prefix-text">Bienvenue</span><span class="big font-weight-bold d-inline-flex offset-right-170">À</span><span class="biggest d-block d-xl-flex font-weight-bold"><p class="p2">Orientation</p><p class="p">Sup</p></span></h1>
                <div class="decorated-subtitle text-italic text-white wow slideInLeft">une orientation scolaire et professionnelle</div>
              </div>
            </div>
            <div class="col-12 text-center offset-top-75" data-wow-delay=".2s"><a class="button-way-point d-inline-block text-center d-inline-flex flex-column justify-content-center" href="#" data-custom-scroll-to="login"><span class="fa-chevron-down"></span></a></div>
          </div>
        </div>
        <div class="decorate-layer">
          <div class="layer-1">
            <div class="layer" data-depth=".20"><img src="site/images/parallax-item-1-563x532.png" alt="" width="563" height="266"/>
            </div>
          </div>
          <div class="layer-2">
            <div class="layer" data-depth=".30"><img src="site/images/parallax-item-2-276x343.png" alt="" width="276" height="171"/>
            </div>
          </div>
          <div class="layer-3">
            <div class="layer" data-depth=".40"><img src="site/images/parallax-item-3-153x144.png" alt="" width="153" height="72"/>
            </div>
          </div>
          <div class="layer-4">
            <div class="layer" data-depth=".20"><img src="site/images/parallax-item-4-69x74.png" alt="" width="69" height="37"/>
            </div>
          </div>
          <div class="layer-5">
            <div class="layer" data-depth=".40"><img src="site/images/parallax-item-5-72x75.png" alt="" width="72" height="37"/>
            </div>
          </div>
          <div class="layer-6">
            <div class="layer" data-depth=".30"><img src="site/images/parallax-item-6-45x54.png" alt="" width="45" height="27"/>
            </div>
          </div>
        </div>
      </section>
      <!--login-->
      <section class="section section-sm position-relative" id="about">
        <div class="container">
          <div class="row row-30">
            <div class="col-lg-6">
              <div class="block-decorate-img wow fadeInLeft" data-wow-delay=".2s"><img src="site/images/home-1-570x703.jpeg" alt="" width="570" height="351"/>
              </div>
            </div>
            <div class="col-lg-6 col-12">
              <div class="block-sm offset-top-45">
                <div class="section-name wow fadeInRight" data-wow-delay=".2s">À propos</div>
                <h3 class="wow fadeInLeft text-capitalize devider-bottom" data-wow-delay=".3s">que ce qu'on <span class="text-primary"> fait</span></h3>
                <p class="offset-xl-40 wow fadeInUp" data-wow-delay=".4s">il s'agit d'un site web qui oriente les étudiants à des Établissement scolaires en fonction de leur choix et leur moyenne.

</p>
                <p class="default-letter-spacing font-weight-bold text-gray-dark wow fadeInUp" data-wow-delay=".4s">Le site est constitué d'un ensemble de pages, chaque page  joue un rôle important pour 
Faire une orientation.
</p><a class="button-width-190 button-primary button-circle button-lg button offset-top-30" href="#">plus</a>
              </div>
            </div>
          </div>
        </div>
        <div class="decor-text decor-text-1">À propos</div>
      </section>
      <!--Features-->
      <section class="section custom-section position-relative section-md">
        <div class="container">
          <div class="row">
            <div class="col-xl-7 col-lg-7 col-12">
              <div class="section-name wow fadeInRight">NOS CARACTÉRISTIQUES</div>
              <h3 class="text-capitalize devider-left wow fadeInLeft" data-wow-delay=".2s">Pourquoi <span class="text-primary"> Nous</span></h3>
              <p>il s'agit d'un site web qui oriente les étudiants à des Établissement scolaires en fonction de leur choix et leur moyenne.</p>
              <div class="row row-15">
                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".2s">
                  <div class="box-default">
                    <div class="box-default-title">les bachelières</div>
                    <p class="box-default-description">On oriente les bachelières des différentes séries à leur établissement.</p><span class="box-default-icon novi-icon icon-lg mercury-icon-lightbulb-gears"></span>
                  </div>
                </div>
                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".3s">
                  <div class="box-default">
                    <div class="box-default-title">une orientation complete</div>
                    <p class="box-default-description">une orientation complète , en fonction du classement des étudiants et leurs choix.</p><span class="box-default-icon novi-icon icon-lg mercury-icon-target-2"></span>
                  </div>
                </div>
                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".4s">
                  <div class="box-default">
                </div>
                <div class="col-xl-6 wow fadeInUp" data-wow-delay=".5s">
                  <div class="box-default">
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="image-left-side wow slideInRight" data-wow-delay=".5s"><img src="site/images/home-2-636x480.jpg" alt="" width="636" height="240"/>
        </div>
        <div class="decor-text decor-text-2 wow fadeInUp" data-wow-delay=".3s">features</div>
      </section>
      <!--Counters-->
      
      <!--Footer-->
      <footer class="section footer-classic section-sm">
        <div class="container">
          <div class="row row-30">
            <div class="col-lg-3 wow fadeInLeft">
              <!--Brand--><a class="brand" href="index.php"><img class="brand-logo-dark" src="site/images/logo-default-200x34.png" alt="" width="100" height="17"/><img class="brand-logo-light" src="site/images/logo-default-200x34.png" alt="" width="100" height="17"/></a>
            </div>
            <div class="col-lg-3 col-sm-8 wow fadeInUp">
              <P class="footer-classic-title">contact info</P>
              <div class="d-block offset-top-0"> Nktt, Mauritanie<span class="d-lg-block"></span></div><a class="d-inline-block accent-link" href="mailto:#">orientationSup@gmail.com</a><a class="d-inline-block" href="tel:#">+222 34162134</a>
              
            </div>
            <div class="col-lg-2 col-sm-4 wow fadeInUp" data-wow-delay=".3s">
              <P class="footer-classic-title">Liens Rapides

              </P>
              <ul class="footer-classic-nav-list">
                <li><a href="index.php">Home</a></li>
                <li><a href="site/login.php">login</a></li>
                <li><a href="site/contacts.php">Contacts</a></li>
              </ul>
            </div>
            <div class="col-lg-4 wow fadeInLeft" data-wow-delay=".2s">
              <P class="footer-classic-title">lettre d’information</P>
              <form class="rd-mailform text-left footer-classic-subscribe-form" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                <div class="form-wrap">
                  <label class="form-label" for="subscribe-email">Votre Email Address</label>
                  <input class="form-input" id="subscribe-email" type="email" name="email" data-constraints="@Email @Required">
                </div>
                <div class="form-button group-sm text-center text-lg-left">
                  <button class="button button-primary button-circle" type="submit">sign up</button>
                </div>
              </form>
              <p>Soyez le premier à découvrir nos dernières nouvelles et mises à jour.</p>
            </div>
          </div>
        </div>
        <div class="container wow fadeInUp" data-wow-delay=".4s">
          <div class="footer-classic-aside">
            <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span>. All Rights Reserved. Design by orientationSup</p>
            <ul class="social-links">
              <li><a class="fa fa-linkedin" href="#"></a></li>
              <li><a class="fa fa fa-twitter" href="#"></a></li>
              <li><a class="fa fa-facebook" href="#"></a></li>
              <li><a class="fa fa-instagram" href="#"></a></li>
            </ul>
          </div>
        </div>
      </footer>
    </div>
    <div class="snackbars" id="form-output-global"></div>
    <script src="site/js/core.min.js"></script>
    <script src="site/js/script.js"></script>
    <!--coded by Drel-->
  </body>
</html>