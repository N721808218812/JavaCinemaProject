<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "login";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html class="no-js" lang="zxx">
<head>
    <META http-equiv="refresh" content="3;URL=all.jsp">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Potvrda rezervacije</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/repertoar.css">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cinema</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Potvrda rezervacije</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/potvrdarez.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a class="active" href="all.jsp">Pocetna</a></li>
                                            <li><a class="" href="Repertoar.jsp">Repertoar</a></l/li>
                                            <li><a href="#">Bioskop <i class="ti-angle-down"></i></a>
                                                <ul class="submenu">
                                                        <li><a href="movies.jsp">Filmovi</a></li>
                                                        <li><a href="multitables.jsp">Postanite clan kluba</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Cenovnik / Vase rezervacije<i class="ti-angle-down"></i></a>
                                                <ul class="submenu">
                                                    <li><a href="cenovnik.jsp">Cenovnik hrane i pica</a></li>
                                                    <li><a href="korisnikrezervacije.jsp">Vase rezervacije</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                                <div class="social_wrap d-flex align-items-center justify-content-end">
                                    <div class="number">
                                        <p> <i class="fa fa-phone"></i> +381 63 2200054</p>
                                    </div>
                                    <div class="social_links d-none d-xl-block">
                                        <ul>
                                            <li><a href="#"> <i class="fa fa-instagram"></i> </a></li>
                                            <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
                                            <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
                                            <li><a href="#"> <i class="fa fa-google-plus"></i> </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="seach_icon">
                                <a href="register.jsp">Log in<br>Register<br></a>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>

    <form action="">
    <!-- header-end -->
<center><h1>POTVRDA REZERVACIJE</h1></center>


<div class="box">
  <ul class="left">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
  
  <ul class="right">
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
  </ul>
     <div class="ticket">
    <span class="airline">Uspesna rezervacija</span>
    <span class="airline airlineslip">Ocekujemo Vas!</span>
    <span class="boarding">Korisnicka karta</span>
    <div class="content">
      <span class="jfk">Dolazak 30 min ranije!</span>
      <span class="jfk jfkslip">HT4</span>
      <span class="sfo sfoslip">SFO</span>
      <div class="sub-content">
        <span class="watermark">Cineplexx</span>
        <span class="name">KORISNICKO IME<br><span>Jovan Petrovic</span></span>
        <span class="flight">Sediste<br><span>X3-65C3</span></span>
        <span class="gate">Sala<br><span>11B</span></span>
        <span class="seat">Hrana/Pice<br><span>YES</span></span>
        <span class="boardingtime">VREME:<br><span>8:25PM 25.08.2020</span></span>
            
         <span class="flight flightslip">Sediste<br><span>X3-65C3</span></span>
          <span class="seat seatslip">Sala<br><span>45A</span></span>
         <span class="name nameslip">KORISNICKO IME<br><span>Rex, Anonasaurus</span></span>
      </div>
    </div>
    <div class="barcode"></div>
    <div class="barcode slip"></div>
  </div>
</div>

</form>
</body>
</html>