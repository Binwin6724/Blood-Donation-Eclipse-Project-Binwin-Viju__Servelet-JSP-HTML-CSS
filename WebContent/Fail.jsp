<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fail</title>
<style>
/* Reset */
*,
*::after,
*::before {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  font-size: 62.5%;
}
@media (max-width: 75em) {
  html {
    font-size: 56.25%;
  }
}
@media (max-width: 56.25em) {
  html {
    font-size: 50%;
  }
}
@media (min-width: 112.5em) {
  html {
    font-size: 75%;
  }
}

body {
  height: 100vh;
  background-color: #ece0e8;
}

.artboard {
  display: flex;
  flex-flow: row;
  align-items: center;
  justify-content: center;
  padding: 4rem;
  height: 100%;
  position: relative;
}
@media (max-width: 37.5em) {
  .artboard {
    padding: 1rem;
  }
}

.card {
  flex: initial;
  position: relative;
  height: 52rem;
  width: 48rem;
  -moz-perspective: 200rem;
  perspective: 200rem;
  margin: 2rem;
}
.card__side {
  height: 52rem;
  transition: all 0.8s ease;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  -webkit-backface-visibility: hidden;
  /* We don't want to see the back part of the element. */
  backface-visibility: hidden;
  /* We don't want to see the back part of the element. */
  border-radius: 3px;
  overflow: hidden;
  /* The image is overflowing the parent. */
  box-shadow: 0 2rem 6rem rgba(0, 0, 0, 0.15);
}
.card__side--front {
  background-image: linear-gradient(to right bottom, rgba(30, 11, 54, 0.65), rgba(202, 55, 130, 0.7)), url(https://cdn.spacetelescope.org/archives/images/screen/heic0406a.jpg);
}
.card__side--back {
  background-color: #fff;
  transform: rotateY(180deg);
}
.card:hover .card__side--back {
  transform: rotateY(0);
}
.card:hover .card__side--front {
  transform: rotateY(-180deg);
}
.card__theme {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  top: 54%;
  width: 90%;
  text-align: center;
}
.card__theme-box {
  color: #fff;
  margin-bottom: 8rem;
}
.card__subject {
  font-family: "Inconsolata", monospace;
  letter-spacing: 0.8rem;
  font-size: 1.6rem;
  text-transform: uppercase;
  margin-bottom: 1rem;
}
.card__title {
  font-family: "VT323", monospace;
  text-transform: uppercase;
  font-size: 6rem;
  font-weight: 100;
}
.card__cover {
  position: relative;
  background-size: cover;
  height: 14rem;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% 85%, 0 100%);
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
  background-image: linear-gradient(to top right, rgba(30, 11, 54, 0.65), rgba(202, 55, 130, 0.65)), url(https://cdn.spacetelescope.org/archives/images/screen/heic0406a.jpg);
}
.card__heading {
  text-align: center;
  color: #fff;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 75%;
}
.card__heading-span {
  font-family: "VT323", monospace;
  font-size: 4.2rem;
  font-weight: 300;
  text-transform: uppercase;
  padding: 1rem 1.5rem;
  color: #fff;
}
.card__details {
  font-family: "Inconsolata", monospace;
  padding: 4rem 2rem;
}
.card__details ul {
  list-style: none;
  width: 80%;
  margin: 0 auto;
}
.card__details ul li {
  text-align: center;
  font-size: 1.8rem;
  padding: 1rem;
}
.card__details ul li:not(:last-child) {
  border-bottom: 1px solid #eee;
}
@media only screen and (max-width: 37.5em), only screen and (hover: none) {
  .card {
    height: auto;
    border-radius: 3px;
    background-color: #fff;
    box-shadow: 0 2rem 6rem rgba(0, 0, 0, 0.15);
  }
  .card__side {
    height: auto;
    position: relative;
    box-shadow: none;
  }
  .card__side--front {
    clip-path: polygon(0 15%, 100% 0, 100% 100%, 0 100%);
  }
  .card__side--back {
    transform: rotateY(0);
  }
  .card:hover .card__side--front {
    transform: rotateY(0);
  }
  .card__details {
    padding: 3rem 2rem;
  }
  .card__theme {
    position: relative;
    top: 0;
    left: 0;
    transform: translate(0);
    width: 100%;
    padding: 5rem 4rem 1.5rem 4rem;
    text-align: right;
  }
  .card__theme-box {
    margin-bottom: 1.5rem;
  }
  .card__title {
    font-size: 4rem;
  }
}

</style>
</head>
<body>
<div class="artboard">
 <div class="card">

  <div class="card__side card__side--back">
   <div class="card__cover">
    <h4 class="card__heading">
     <span class="card__heading-span">Developer</span>
    </h4>
   </div>
   <div class="card__details">
    <ul>
     <li>Thank you for</li>
     <li>Choosing us.</li>
     <li>Details Entered</li>
     <li>successfully</li>
     <li>Developed by</li>
     <li><b>Minna TJ</b></li>
     <li>"Blood Donation"</li>
     <li><a href="home.jsp">Click Here</a> to go to home page</li>
    </ul>
   </div>
  </div>

  <div class="card__side card__side--front">
   <div class="card__theme">
    <div class="card__theme-box">
     <p class="card__subject">BE A HERO</p>
     <p class="card__title">DONATE BLOOD</p>
    </div>
   </div>
  </div>

 </div>
</div>
</body>
</html>