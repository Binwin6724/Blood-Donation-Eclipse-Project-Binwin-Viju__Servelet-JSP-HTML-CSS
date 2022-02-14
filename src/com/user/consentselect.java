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

@WebServlet("/consentselect")
public class consentselect extends  HttpServlet  {
private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status=request.getParameter("status");
String user=request.getParameter("user");
	
	    
	   
		try{
			String url="jdbc:Mysql://127.0.0.1:3306/donor";
			String uname="root";
			String pass="minnabinwin";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String qry="UPDATE user SET status= ? WHERE username = ? " ;
				st=con.prepareStatement(qry);
				st.setString(1, status);
				st.setString(2, user);
				st.executeUpdate();	
				
			
				
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		if(status.equals("consent")){
			RequestDispatcher rd=request.getRequestDispatcher("Success.jsp");
			rd.forward(request, response);
		}
		else{
		RequestDispatcher rd=request.getRequestDispatcher("Fail.jsp");
		rd.forward(request, response);
		}
		}
}

