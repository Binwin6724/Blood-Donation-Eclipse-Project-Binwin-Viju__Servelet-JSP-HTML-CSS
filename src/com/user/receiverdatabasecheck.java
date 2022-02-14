package com.user;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static javax.swing.JOptionPane.showMessageDialog;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@WebServlet("/receiverdatabasecheck")
public class receiverdatabasecheck extends  HttpServlet  {
private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
	    try{
			String url="jdbc:Mysql://127.0.0.1:3306/donor";
			String uname="root";
			String pass="root";
			Connection con= null;
			PreparedStatement st= null;
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,uname,pass);
				String query="Select password from receiver where username = ?";
				   st=con.prepareStatement(query);
				   String name_java=request.getParameter("uname");
				   String password_java=request.getParameter("upass");
				   st.setString(1, name_java);
				   ResultSet rs=st.executeQuery();
				   rs.next();
				   String password_database=(String)rs.getString("password");
				   System.out.println("Connected to database......................................................");
				   if(password_database.equals(password_java))
				   {
				    //success	  
					   RequestDispatcher rd=request.getRequestDispatcher("list.jsp");
						rd.forward(request, response);
				   }
				   else
				   {
					   showMessageDialog(null, "Wrong Password");
					   RequestDispatcher rd=request.getRequestDispatcher("receiverLogin.jsp");
						rd.forward(request, response);
				   }
				   rs.close();
				   st.close();
				 
				}
				catch(ClassNotFoundException|SQLException e){
					JOptionPane.showMessageDialog(null, "User not registered","Alert",JOptionPane.WARNING_MESSAGE);    
					RequestDispatcher rd=request.getRequestDispatcher("receiver.jsp");
					rd.forward(request, response);
					System.out.println("Connection failiour to SQL server...");
				e.printStackTrace();
				}
		}
			
			}




