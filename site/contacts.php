<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Contacts</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:300,400,700%7CPoppins:300,400,500,700,900">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
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
                    <!--Brand--><a class="brand" href="../index.php"><img class="brand-logo-dark" src="images/logo-default-200x34.png" alt="" width="100" height="17"/><img class="brand-logo-light" src="images/logo-inverse-200x34.png" alt="" width="100" height="17"/></a>
                  </div>
                </div>
                <div class="rd-navbar-main-element">
                  <div class="rd-navbar-nav-wrap">
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item"><a class="rd-nav-link" href="../index.php">Home</a>
                      </li>
    
                  
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="contacts.php">Contacts</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <section class="section section-intro context-dark">
        <div class="intro-bg" style="background: url() no-repeat;background-size:cover;background-position: top center;"></div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xl-8 text-center">
              <h1 class="font-weight-bold wow fadeInLeft">Contacts</h1>
              <p class="intro-description wow fadeInRight">N'hésitez pas à nous contacter.</p>
            </div>
          </div>
        </div>
      </section>
      <!--Mailform-->
      <section class="section section-md">
        <div class="container">
          <!--RD Mailform-->
          <div class="row justify-content-center">
            <div class="col-xl-6 col-md-8 col-12">
              <form class="rd-mailform text-left" data-form-output="form-output-global" data-form-type="contact" method="post" action="bat/rd-mailform.php">
                <div class="form-wrap">
                  <label class="form-label" for="contact-name">Name<span class="req-symbol">*</span></label>
                  <input class="form-input" id="contact-name" type="text" name="name" data-constraints="@Required">
                </div>
                <div class="form-wrap">
                  <label class="form-label" for="contact-phone">Phone<span class="req-symbol">*</span></label>
                  <input class="form-input" id="contact-phone" type="text" name="phone" data-constraints="@Required @PhoneNumber">
                </div>
                <div class="form-wrap">
                  <label class="form-label" for="contact-email">E-Mail<span class="req-symbol">*</span></label>
                  <input class="form-input" id="contact-email" type="email" name="email" data-constraints="@Required @Email">
                </div>
                <div class="form-wrap">
                  <label class="form-label label-textarea" for="contact-message">Message<span class="req-symbol">*</span></label>
                  <textarea class="form-input" id="contact-message" name="message" data-constraints="@Required"></textarea>
                </div>
                <!--Google captcha-->
                <div class="form-wrap text-left form-validation-left">
                  <div class="recaptcha" id="captcha1" data-sitekey="6LfZlSETAAAAAC5VW4R4tQP8Am_to4bM3dddxkEt"></div>
                </div>
                <div class="form-button group-sm text-center text-lg-left">
                  <button class="button button-primary" type="submit">Send</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <footer class="section footer-classic section-sm">
        <div class="container">
          <div class="row row-30">
            <div class="col-lg-3 wow fadeInLeft">
              <!--Brand--><a class="brand" href="../index.php"><img class="brand-logo-dark" src="images/logo-default-200x34.png" alt="" width="100" height="17"/><img class="brand-logo-light" src="images/logo-default-200x34.png" alt="" width="100" height="17"/></a>
            </div> 
            <div class="col-lg-3 col-sm-8 wow fadeInUp">
              <P class="footer-classic-title">contact info</P>
              <div class="d-block offset-top-0"> Nktt, Mauritanie<span class="d-lg-block"></span></div><a class="d-inline-block accent-link" href="mailto:#">orientationSup@gmail.com</a><a class="d-inline-block" href="tel:#">+222 34162134</a>
              
            </div>
            <div class="col-lg-2 col-sm-4 wow fadeInUp" data-wow-delay=".3s">
              <P class="footer-classic-title">Lins Rapides

              </P>
              <ul class="footer-classic-nav-list">
                <li><a href="../index.php">Home</a></li>
                <li><a href="login.php">login us</a></li>
                <li><a href="contacts.php">Contacts</a></li>
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
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>