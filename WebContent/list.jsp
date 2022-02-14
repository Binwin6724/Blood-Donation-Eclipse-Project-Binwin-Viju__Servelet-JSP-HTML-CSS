<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.time.ZoneId" %>
<%@page import="java.util.Date" %>
<%@page import="java.time.LocalDate" %>
<%@page import="java.time.Instant" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Scanner"%>
<%@ page import="java.time.temporal.ChronoUnit"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeParseException"%>
<%@ page import="java.time.temporal.ChronoUnit"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.util.TimeZone"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DONOR LIST</title>
<style type="text/css">

h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:relative;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}










.button {
  text-align: center;
  text-transform: uppercase;
  cursor: pointer;
  font-size: 20px;
  letter-spacing: 4px;
  position: relative;
  background-color: #16a085;
  border: none;
  color: #fff;
  padding: 20px;
  width: 200px;
  text-align: center;
  transition-duration: 0.4s;
  overflow: hidden;
  box-shadow: 0 5px 15px #193047;
  border-radius: 4px;
}

.button:hover {
  background: #fff;
  box-shadow: 0px 2px 10px 5px #1abc9c;
  color: #000;
}

.button:after {
  content: "";
  background: #1abc9c;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px !important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s
}

.button:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s
}

.button:focus { outline:0; }

button{
font-size: 2.5rem;
  font-family: 'Montserrat';
  font-weight: normal;
  color: #444;
  text-align: center;
  margin: 2rem 0;
}
.center {
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
</head>
<body>
<form action="updatedonor">
<section>
  <!--for demo wrap-->
  <h1>DONOR LIST</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Username</th>
          <th>age</th>
          <th>Blood Group</th>
          <th>status</th>
          <th>available after</th>
          <th>Book</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       
       
       
       <% 


String num =request.getParameter("search");
String status = "consent";
String url = "jdbc:mysql://127.0.0.1:3306/donor";
String uname = "root";
String pass = "root";
Connection con = null;
PreparedStatement st = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, uname, pass);

String qry = "select * from user where status = ?";
st = con.prepareStatement(qry);
st.setString(1, status);
ResultSet result = st.executeQuery();

while (result.next()) {

String username = result.getString("username");
String age = result.getString("age");
String bg = result.getString("bloodgroup");
String status1 = result.getString("status");
Date dateo = result.getDate("date");



System.out.println("Connected to database...............");
out.print("<tr><td >"+username+"</td>");
out.print("<td>"+age+"</td>");
out.print("<td>"+bg+"</td>");
out.print("<td>"+status1+"</td>");
out.print("<td>"+dateo+"</td>");
out.print("<td><button class='button' name='btn' value = '"+username+"'>Book</button>");

}	 
			System.out.println("Connected to database...............");

%>




 
       
      </tbody>
    </table>
  </div>
</section>




	<div class="center">
  <a href="home.jsp" type="button" class="button" onclick="home.jsp">Go Back</a>
</div>

<!-- follow me template -->
<div class="made-with-love">
  Made by Minna TJ
</div>
</form>
</body>
</html>