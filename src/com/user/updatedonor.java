package com.user;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.util.Date;
import java.time.LocalDate;
import java.time.Instant;
import java.util.Calendar;
import java.util.Scanner;
import java.time.temporal.ChronoUnit;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
 import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.time.LocalDate;
import java.util.TimeZone;
import java.text.SimpleDateFormat;
@WebServlet("/updatedonor")
public class updatedonor extends  HttpServlet  {
private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
String user=request.getParameter("btn");
String dateo=request.getParameter("dateo");
	
LocalDate today = LocalDate.now();
int year = today.getYear();
int month = today.getMonthValue();
int day = today.getDayOfMonth();
System.out.printf("Year : %d  Month : %d  day : %d \t %n", year, month, day);

java.sql.Date date1 = java.sql.Date.valueOf(today);





Calendar cal=Calendar.getInstance();
cal.setTime(date1);
System.out.println(cal.getTime());


System.out.println("Current Date = " + cal.getTime());
// Adding 2 weeks
cal.add(Calendar.MONTH, 3);
System.out.println("Updated Date = " + cal);

TimeZone tz = cal.getTimeZone();

// Getting zone id
ZoneId zoneId = tz.toZoneId();

// conversion
LocalDateTime localDateTime = LocalDateTime.ofInstant(cal.toInstant(), zoneId);
System.out.println("Local date time object  : "+localDateTime);
Instant i = localDateTime.atZone(ZoneId.systemDefault()).toInstant();
System.out.println("Instant = "+i);
java.util.Date date2 = Date.from(i);
System.out.println("Date = "+date2);

java.sql.Date date3 = new java.sql.Date(date2.getTime());


System.out.println("LASTDate = "+date3);
	   
		try{
			String url="jdbc:Mysql://127.0.0.1:3306/donor";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="UPDATE user SET date= ? WHERE username = ? " ;
				st=con.prepareStatement(qry);
				st.setDate(1, date3);
				st.setString(2, user);
				st.executeUpdate();	
				
			
				
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	
			RequestDispatcher rd=request.getRequestDispatcher("Success.jsp");
			rd.forward(request, response);
		
		
		}
}

