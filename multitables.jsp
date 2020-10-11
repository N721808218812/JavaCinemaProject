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
<!doctype html>
<html class="no-js" lang="zxx">

<head>
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
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<body>
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
                                            <li><a href="about.html">O nama</a></li>
                                            <li><a class="" href="travel_destination.html">Repertoar</a></l/li>
                                            <li><a href="#">Bioskop <i class="ti-angle-down"></i></a>
                                                <ul class="submenu">
                                                        <li><a href="movies.jsp">Filmovi</a></li>
                                                        <li><a href="multitables.jsp">Postanite clan kluba</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                                <ul class="submenu">
                                                    <li><a href="blog.html">blog</a></li>
                                                    <li><a href="single-blog.html">single-blog</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Kontakt</a></li>
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
    <!-- header-end -->
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from user order by id desc limit 1 ";
resultSet = statement.executeQuery(sql);
//"SELECT b.cinemaname,b.capacity,s.brojRedova,s.id from sala s join bioskop b on (s.bioskop_id=b.id)"
while(resultSet.next()){
%>
<form action="Club" method="post">
    <center><h1>Postanite clan kluba i osvojite popuste!</h1></center><br><br>
<img src="images/ticket3.png">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<center><h3>Vasi podaci</h3></center><br><br>
<center>Name :<input type="text" name="name" value="<%=resultSet.getString("name") %>"><br><br></center>
<center>Email :<input type="text" name="email" value="<%=resultSet.getString("email") %>"><br><br></center>

 <!-- where_togo_area_start  -->
    <div class="where_togo_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-9">
                    <div class="search_wrap">
                            <div class="input_field">
                                <center>Izabeite kurs:</center>
<center><select name="club">
<option value="premium">PREMIUM</option>
<option value="family">FAMILY</option>
<option value="jumbo">JUMBO</option>
    </select></center>
                            </div>
                           
                                
                         <div class="search_btn">
<center><input type="submit" class="boxed-btn4 " value="POTVRDI"></center>
 </div>   
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- where_togo_area_end  -->    
<br><br><br><br><br><br>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    <!-- link that opens popup -->
<!--     
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script> -->
    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>
    <script src="js/slick.min.js"></script>
   

    
    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>


    <script src="js/main.js"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });
    </script>
</form>
</body>
</html>