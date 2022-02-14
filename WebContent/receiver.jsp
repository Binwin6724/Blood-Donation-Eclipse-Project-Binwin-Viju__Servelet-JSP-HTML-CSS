<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receiver Registration</title>
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
.login-form{
  position: relative;
  width: 370px;
  height: auto;
  background: #1b1b1b;
  padding: 40px 35px 60px;
  box-sizing: border-box;
  border: 1px solid black;
  border-radius: 5px;
  box-shadow: inset 0 0 1px #272727;
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
    
</style>
<script type="text/javascript">

function Validate()
{ 	
	
	 var pass = document.form.cupass.value;
	var password = document.getElementById("password").value;
	 var age = document.getElementById("age").value;
     var username = document.form.uname.value; 
     var name = document.form.name.value; 
     var email = document.form.em.value;
     var phonenumber = document.form.num.value;
     if (password != confirmPassword) {
         alert("Passwords do not match.");
         return false;
     }
     
     
     if (username==null || username=="")
     { 
     alert("Username cannot be blank"); 
     return false; 
     }
     if (age<18)
    	 {
    	 alert("User can't Donate due to age limit");
    	 return false;
    	 }
     else if (name==null ||name=="")
     { 
     alert("name cannot be blank"); 
     return false;
     }
     else if (phonenumber==null || phonenumber=="")
     { 
     alert("phone number cannot be blank"); 
     return false;
     }
     else if  (email==null || email=="")
     { 
     alert("email cannot be blank"); 
     return false;
     }
     
    
     else if(pass==null || pass=="")
     { 
     alert("Password cannot be blank"); 
     return false; 
     } 
   
 
}
</script>
</head>
<body>
    
    <div class="login-form">
      <div class="text">
RECEIVER REGISTRATION</div>
				<form name="form" action="receiverdatabaseinsert" >
					
					 <div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="text"  placeholder="Name"  id="name"
							name="name" class="form-control">
							<br><br></div>
							<div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="email"  placeholder="Email" id="mail"
							name="em" class="form-control"><br><br>
							</div>
							<div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="text"  placeholder="Phone Number" id="number"
							name="num" class="form-control"><br><br></div>
							
							
							<div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="text"  placeholder="Age"  id="age"
							name="age" class="form-control"><br><br></div>
							
							
							
							
							
							<div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="text"  placeholder="Username"  id="uname"
							name="uname" class="form-control"><br><br></div>
		
					<div class="field">
          <div class="fas fa-envelope">
          </div>
						<input type="password"  placeholder="Password" id="password" name="upass" class="form-control"><br><br></div>
						
					<div class="field">
          <div class="fas fa-envelope">
          </div>
							<input type="password"  placeholder="Confirm Password" id="conpassword" name="cupass" class="form-control">
					
					<br>
					</div>
                    <br>
						<button type="submit" class="button" id="but" onclick="return Validate()">Submit</button>
						<button type="reset" class="button">Reset</button><br><br>
						<span class="create">Already a Member!<br><a href="receiverLogin.jsp">Login Here</a></span>
				
				</form>		
			</div>
		
</body>
</html>
