<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="static javax.swing.JOptionPane.showMessageDialog" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consent</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script> 
function Validate()
{ 
     var ggg = document.form.search.value; 
     var hhh = document.form.price.value;
     if ((ggg==null || ggg=="")&&(hhh=="" || hhh==null))
     { 
     alert("Please select any category"); 
     return false; 
     }
     else if(ggg=="")
    	 {
    	 alert("please select category");
    	 return false;
    	 }
     else if(hhh=="")
    	 {
    	 alert("please select price");
    	 return false;
    	 }
 
}
</script> 

<style>
*{
  margin: 0;
  padding: 0;
}
body{
  display: flex;
  height: 100vh;
  text-align: center;
  align-items: center;
  justify-content: center;
  background: #151515;
}

.text{
	font-family: Century Gothic;
  font-size: 30px;
  color: #c7c7c7;
  font-weight: 600;
  letter-spacing: 2px;
}
form{
  margin-top: 40px;
}

form .field{
  margin-top: 20px;
  display: flex;
}
form .hello
{
margin-left: 40px;
}
.field input,form button{
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 19px;
  color: #868686;
  padding: 0 15px;
  border-radius: 0 5px 5px 0;
  border: 1px solid #444;
  caret-color: #339933;
  background: linear-gradient(#333,#222);
}
input:focus{
  color: #339933;
  box-shadow: 0 0 5px rgba(0,255,0,.2),
              inset 0 0 5px rgba(0,255,0,.1);
  background: linear-gradient(#333933,#222922);
  animation: glow .5s ease-out infinite alternate;
}
@keyframes glow {
   10%{
    border-color: #339933;
    box-shadow: 0 0 5px rgba(0,255,0,.2),
                inset 0 0 5px rgba(0,0,0,.1);
  }
   100%{
    border-color: #6f6;
    box-shadow: 0 0 20px rgba(0,255,0,.6),
                inset 0 0 10px rgba(0,255,0,.4);
  }
}
button{
  margin-top: 30px;
  border-radius: 5px!important;
  font-weight: 600;
  letter-spacing: 1px;
  cursor: pointer;
}
button:hover{
  color: #339933;
  border: 1px solid #339933;
  box-shadow: 0 0 5px rgba(0,255,0,.3),
              0 0 10px rgba(0,255,0,.2),
              0 0 15px rgba(0,255,0,.1),
              0 2px 0 black;
}
h1,h3{
 color: #339933;
}

.field input,form button,.feild button,form .button{
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 19px;
  color: #868686;
  padding: 0 15px;
  border-radius: 0 5px 5px 0;
  border: 1px solid #444;
  caret-color: #339933;
  background: linear-gradient(#333,#222);
}
.button{
  margin-top: 20px;
  border-radius: 5px!important;
  font-weight: 600;
  letter-spacing: 1px;
  cursor: pointer;
}
.button:hover{
  color: #339933;
  border: 1px solid #339933;
  box-shadow: 0 0 5px rgba(0,255,0,.3),
              0 0 10px rgba(0,255,0,.2),
              0 0 15px rgba(0,255,0,.1),
              0 2px 0 black;
}



select {
  width: 100%;
  height: 50px;
  font-size: 100%;
  font-weight: bold;
  cursor: pointer;
  border-radius: 0;
  background-color: #c0392b;
  border: none;
  border-bottom: 2px solid #962d22;
  color: white;
  padding: 10px;
  appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  padding: 10px;
}
/* For IE <= 11 */
select::-ms-expand {
  display: none; 
}
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

</style>
</head>
<body>
<form name="form" action="consentselect" onsubmit="return validate()">
<div class="login-form">
<div class="text">
<h1 >Select Category</h1>
<br>

<%
String user = request.getParameter("uname");
		String password = request.getParameter("upass");%>
		
		<%
		if(user==null)
		{
			showMessageDialog(null, "Please Login and continue!!");
			out.println("<script>alert('Please Login and continue');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("donorLogin.jsp");
			rd.forward(request, response);
		}
		else{%>
		<input type="hidden" name="user" value=<%out.println(user); %>>
		<input type="hidden" name="password" value=<%out.println(password); %>>
		
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Alert!</strong> This is a secured page and if you need to go back, You must Login again.
</div>
		
		
		
		
		
		
		
		
		
		
<div class="field">
          <div class="fas fa-envelope">
          </div>
          
<select  class="button" name="status">
  <option value="consent">Accept to donate</option>
  <option  value="dissent">Reject to donate</option>
  <option   selected value="">Select your status</option>
</select><br></div>


<div class="field">
          <div class="fas fa-envelope">
          </div>
<button type="submit" onclick="return Validate()"><i class="fa fa-search" ></i></button> 
</div>
<div class="field">
        


<div class="hello">
<a href="home.jsp"> 
<input type="button"
value="Logout" class="button"></a></div>	
</div>

</div>
</div>
<%	}%>
</form>
</body>
</html>
