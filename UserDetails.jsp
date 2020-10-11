<%-- 
    Document   : UserDetails
    Created on : Jun 28, 2020, 1:12:40 AM
    Author     : Dzontra
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>LICNI KARTON</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/userdetails.css">
    </head>
    <body> 
        <div style="text-align:center;margin-top:25px;font-weight:bold;texxxt-decoration:none;">
</div>
<div class="muck-up">
  <div class="overlay"></div>
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from user order by id desc limit 1 ";
resultSet = statement.executeQuery(sql);
//"SELECT b.cinemaname,b.capacity,s.brojRedova,s.id from sala s join bioskop b on (s.bioskop_id=b.id)"
while(resultSet.next()){
%>
  <div class="top">
    <div class="nav">
      <span class="ion-android-menu"></span>
      <p>Licni karton</p>
      <span class="ion-ios-more-outline"></span>
    </div>
    <div class="user-profile">
      <img src="https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/profile.jpg">
      <div class="user-details">
        <h4><%=resultSet.getString("name") %></h4>
      </div>
    </div>
  </div>
  <div class="clearfix"></div>
  <div class="filter-btn">
    <a id="one" href="#"><i class="ion-ios-checkmark-outline"></i></a>
    <a id="two" href="#"><i class="ion-ios-alarm-outline"></i></a>
    <a id="three" href="#"><i class="ion-ios-heart-outline"></i></a>
    <a id="all" href="#"><i class="ion-ios-star-outline"></i></a>
    <span class="toggle-btn ion-android-funnel"></span>
  </div>
  <div class="clearfix"></div>
  <div class="bottom">
    <div class="title">
      <h3>Informations:</h3>
    </div>
    <ul class="tasks">
      <li class="one red">
        <span class="task-title"><%=resultSet.getString("name") %></span>
        <span class="task-time"></span>
        <span class="task-cat">username</span>

      </li>
      <li class="one red">
        <span class="task-title"><%=resultSet.getString("email") %></span>
        <span class="task-time"></span>
        <span class="task-cat">e-mail</span>

      </li>
      <li class="two green">
        <span class="task-title"><%=resultSet.getString("role") %></span>
        <span class="task-time"></span>
        <span class="task-cat">role</span>

      </li>
      <li class="tow green hang">
        <span class="task-title"><%=resultSet.getString("club") %></span>
        <span class="task-time"></span>
        <span class="task-cat">club</span>
     
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
   <img src="https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/2.jpg">
        <img src="https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/3.jpg">
        <img src="https://raw.githubusercontent.com/arjunamgain/FilterMenu/master/images/profile.jpg">
      </li>
    </ul>
  </div>
</div><br>
<br>
    <center><b><a href="all.jsp" style="color:white">VRATITE SE NA POCETNU STRANICU</a></b></center>
    </body>
</html>

