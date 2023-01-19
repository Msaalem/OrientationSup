<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar menu With Sub-menus | Using HTML, CSS & JQuery</title>
    <link rel="stylesheet" href="../css/sidebar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
  </head>
  <body>

    <div class="menu-btn">
    <i class="fas fa-bars" id="p"></i>
    </div>
    <div class="side-bar">
      <div class="close-btn">
        <i class="fas fa-times"></i>
      </div>
      <div class="menu">
        <div class="item"><a href="#"><i class="fas fa-desktop"></i>Accueil</a></div>
        <div class="item">
          <a class="sub-btn" id="sub-btn"><i class="fas fa-table"></i>Filiere<i class="fas fa-angle-right dropdown"></i></a>
          <div class="sub-menu">
            <a href="../filiere/index.php" class="sub-item">CRUDS</a>
            <a href="../moyenne/capacite.php" class="sub-item">Capacite</a>
            <a href="../moyenne/coeficient.php" class="sub-item">coefficient</a>
          </div>
        </div>
        <div class="item"><a href="#"><i class="fas fa-th"></i>Forms</a></div>
        <div class="item">
          <a class="sub-btn"><i class="fas fa-cogs"></i>Settings<i class="fas fa-angle-right dropdown"></i></a>
          <div class="sub-menu">
            <a href="#" class="sub-item">Sub Item 01</a>
            <a href="#" class="sub-item">Sub Item 02</a>
          </div>
        </div>
        <div class="item"><a href="#"><i class="fas fa-info-circle"></i>About</a></div>
      </div>
    </div>
  

    <script type="text/javascript">
    $(document).ready(function(){
      //jquery for toggle sub menus
      $('.sub-btn').click(function(){
        $(this).next('.sub-menu').slideToggle();
        $(this).find('.dropdown').toggleClass('rotate');
        document.getElementById("side-bar").style.margin = "50px 10px 20px 30px";
      });

      //jquery for expand and collapse the sidebar
      $('.menu-btn').click(function(){
        $('.side-bar').addClass('active');
        $('.menu-btn').css("visibility", "hidden");
        $('.menu-btn').style.margin="50px";

      });

      $('.close-btn').click(function(){
        $('.side-bar').removeClass('active');
        $('.menu-btn').css("visibility", "visible");
      });
    });
    </script>

  </body>
</html>
