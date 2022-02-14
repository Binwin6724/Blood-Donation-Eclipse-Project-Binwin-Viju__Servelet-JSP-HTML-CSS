<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<style>

@import url(https://fonts.googleapis.com/css?family=Lato:100);
.hr {
  width: 100%;
  height: 1px;
  display: block;
  position: relative;
  margin-bottom: 0em;
  padding: 2em 0;
}
.hr:after, .hr:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 1px;
  bottom: 50%;
  left: 0;
}
.hr:before {
  background: linear-gradient(90deg, #10111F 0%, #10111F 50%, transparent 50%, transparent 100%);
  background-size: 15px;
  background-position: center;
  z-index: 1;
}
.hr:after {
  transition: opacity 0.3s ease, -webkit-animation 0.3s ease;
  transition: opacity 0.3s ease, animation 0.3s ease;
  transition: opacity 0.3s ease, animation 0.3s ease, -webkit-animation 0.3s ease;
  background: linear-gradient(to right, #62efab 5%, #F2EA7D 15%, #F2EA7D 25%, #FF8797 35%, #FF8797 45%, #e1a4f4 55%, #e1a4f4 65%, #82fff4 75%, #82fff4 85%, #62efab 95%);
  background-size: 200%;
  background-position: 0%;
  -webkit-animation: bar 15s linear infinite;
          animation: bar 15s linear infinite;
}
@-webkit-keyframes bar {
  0% {
    background-position: 0%;
  }
  100% {
    background-position: 200%;
  }
}
@keyframes bar {
  0% {
    background-position: 0%;
  }
  100% {
    background-position: 200%;
  }
}

.hr.anim:before {
  background: linear-gradient(90deg, #10111F 0%, #10111F 5%, transparent 5%, transparent 10%, #10111F 10%, #10111F 15%, transparent 15%, transparent 20%, #10111F 20%, #10111F 25%, transparent 25%, transparent 30%, #10111F 30%, #10111F 35%, transparent 35%, transparent 40%, #10111F 40%, #10111F 45%, transparent 45%, transparent 50%, #10111F 50%, #10111F 55%, transparent 55%, transparent 60%, #10111F 60%, #10111F 65%, transparent 65%, transparent 70%, #10111F 70%, #10111F 75%, transparent 75%, transparent 80%, #10111F 80%, #10111F 85%, transparent 85%, transparent 90%, #10111F 90%, #10111F 95%, transparent 95%, transparent 100%);
  background-size: 150px;
  background-position: center;
  z-index: 1;
  -webkit-animation: bar 120s linear infinite;
          animation: bar 120s linear infinite;
}
.hr.anim:hover:before {
  -webkit-animation-duration: 20s;
          animation-duration: 20s;
}
.hr.anim:hover:after {
  -webkit-animation-duration: 2s;
          animation-duration: 2s;
}

body {
  background: #10111F;
  padding: 4em;
  font-family: Lato;
  font-weight: 100;
  color: #696B89;
  text-indent: 1em;
  line-height: 1;
}

h1, h2 {
  line-height: 1;
  margin-bottom: -0.5em;
}

h2 {
  margin-top: 5em;
}
</style>
</head>
<body>
<h1>ABOUT US<h1>
    <br>
<h1>Giving blood is a uniquely powerful act.</h1>
 <b class="hr anim"></b>  
 <h1>Effective coordination can dramatically increase its life-saving impact.<h1>
<h1>To mobilize support at national, regional and global levels among governments and development partners to invest in, strengthen and sustain national blood programmes.</h1>
<b class="hr anim"></b>
     <h1>Focus of this year’s campaign<h1>
     <h1>To celebrate and thank individuals who donate blood and to encourage those who have not yet donated blood to start donating;</h1>
     <br>
     <h1>To focus attention on the contribution donors make to the entire community as a critical factor in improving health;</h1>
<b class="hr anim"></b>
</body>
</html>