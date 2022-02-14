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

@WebServlet("/databaseinsert")
public class databaseinsert extends  HttpServlet  {
private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
	    String email=request.getParameter("em");
	    String phone=request.getParameter("num");
	    String username=request.getParameter("uname");
	    String age=request.getParameter("age");
	    String password = request.getParameter("upass");
	    String Bgroup = request.getParameter("Bgroup");
	
	    
	   
		try{
			String url="jdbc:Mysql://127.0.0.1:3306/donor";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="insert into user (name,email,phone,username,age,password,bloodgroup)"+" values(?,?,?,?,?,?,?)" ;
				st=con.prepareStatement(qry);
				st.setString(1,name);
				st.setString(2,email);
				st.setString(3,phone);
				st.setString(4,username);
				st.setString(5,age);
				st.setString(6, password);
				st.setString(7, Bgroup);
				st.executeUpdate();
				
				
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher("consent.jsp");
		rd.forward(request, response);
		}
}

