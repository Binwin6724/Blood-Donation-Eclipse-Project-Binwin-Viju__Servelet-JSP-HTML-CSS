<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
body, html {
  margin: 0;
  padding: 0;
  height: 100%;
  width: 100%;
  font-family: 'Open Sans', sans-serif;
}

main {
  height: 100%;
  width: 100%;
}

aside {
  background-color: #0799d3;
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  width: 20%;
  z-index: 1;
}

section {
  position: relative;
  width: 100%;
  height: 100%;
  background-color: #fff;
  overflow: hidden;
}

label {
  display: inline-block;
  padding: 7px 10px;
  background-color: transparent;
  cursor: pointer;
  margin: 10px;
  z-index: 3;
  position: fixed;
}

.bar {
  display: block;
  background-color: #0799d3;
  width: 30px;
  height: 3px;
  border-radius: 5px;
  margin: 5px auto;
  transition: background-color .5s ease-in, transform .5s ease-in, width .5s ease-in;
}

.untitled {
  top: 0;
  bottom: 0;
  position: absolute;
  right: 0;
  left: 0;
  background-color: #fff;
  z-index: 2;
  transition: transform .5s ease-in-out;
}

h1 {
  margin: 0;
  position: relative;
  top: 50%;
  left: 0;
  right: 0;
  transform: translateY(-50%);
  text-align: center;
  font-size: 40px;
}

.asideList {
  list-style: none;
  padding: 0;
  margin: 0;
  margin-top: 100px;
  text-align: center;
  border-top: 2px solid rgba(255, 255, 255, .7);
}

.asideAnchor {
  border-bottom: 2px solid rgba(255, 255, 255, .7);
  padding: 20px 0;
  display: block;
  color: #fff;
  text-transform: uppercase;
  text-decoration: none;
  font-size: 20px;
  font-weight: 500;
  position: relative;
  transition: color .3s .15s ease-in;
}

.asideAnchor::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 100%;
  background-color: #fff;
  width: 0;
  transition: width .3s ease-in;
  z-index: -1;
}

.asideAnchor:hover {
  color: #0799d3;
}

.asideAnchor:hover::after {
  width: 100%;
}

input[type="checkbox"] {
  display: none;
}

input[type="checkbox"]:checked ~ .untitled {
  transform: translateX(20%);
}

input[type="checkbox"]:checked ~ label .bar {
  background-color: #fff;
}

input[type="checkbox"]:checked ~ label .top {
  -webkit-transform: translateY(0px) rotateZ(45deg);
  -moz-transform: translateY(0px) rotateZ(45deg);
  -ms-transform: translateY(0px) rotateZ(45deg);
  -o-transform: translateY(0px) rotateZ(45deg);
  transform: translateY(0px) rotateZ(45deg);
}

input[type="checkbox"]:checked ~ label .bottom {
  -webkit-transform: translateY(-15px) rotateZ(-45deg);
  -moz-transform: translateY(-15px) rotateZ(-45deg);
  -ms-transform: translateY(-15px) rotateZ(-45deg);
  -o-transform: translateY(-15px) rotateZ(-45deg);
  transform: translateY(-15px) rotateZ(-45deg);
}

input[type="checkbox"]:checked ~ label .middle {
  width: 0;
}

.middle {
  margin: 0 auto;
}

.ua {
  position: absolute;
  right: 20px;
  bottom: 20px;
  color: #0799d3;
  font-size: 2em;
  z-index: 2;
}




html, body {
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}

.untitled {
  position: absolute;
  height: 100%;
  width: 100%;
  -webkit-animation: rotateHue infinite 20s linear;
          animation: rotateHue infinite 20s linear;
  -webkit-animation-delay: 0.625s;
          animation-delay: 0.625s;
}
@-webkit-keyframes rotateHue {
  0% {
    filter: hue-rotate(0deg);
  }
  20% {
    filter: hue-rotate(0deg);
  }
  25% {
    filter: hue-rotate(90deg);
  }
  45% {
    filter: hue-rotate(90deg);
  }
  50% {
    filter: hue-rotate(180deg);
  }
  70% {
    filter: hue-rotate(180deg);
  }
  75% {
    filter: hue-rotate(270deg);
  }
  95% {
    filter: hue-rotate(270deg);
  }
  100% {
    filter: hue-rotate(360deg);
  }
}
@keyframes rotateHue {
  0% {
    filter: hue-rotate(0deg);
  }
  20% {
    filter: hue-rotate(0deg);
  }
  25% {
    filter: hue-rotate(90deg);
  }
  45% {
    filter: hue-rotate(90deg);
  }
  50% {
    filter: hue-rotate(180deg);
  }
  70% {
    filter: hue-rotate(180deg);
  }
  75% {
    filter: hue-rotate(270deg);
  }
  95% {
    filter: hue-rotate(270deg);
  }
  100% {
    filter: hue-rotate(360deg);
  }
}
.untitled__shutters {
  position: absolute;
  height: 150vmax;
  width: 150vmax;
  left: calc(50% - 75vmax);
  top: calc(50% - 75vmax);
  pointer-events: none;
  z-index: 2;
  -webkit-animation: rotateFrame 10s linear infinite;
          animation: rotateFrame 10s linear infinite;
}
@-webkit-keyframes rotateFrame {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(180deg);
  }
}
@keyframes rotateFrame {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(180deg);
  }
}
.untitled__shutters:before, .untitled__shutters:after {
  content: "";
  position: absolute;
  height: 100%;
  width: 100%;
  left: 50%;
  transform: translate3d(-50%, 0, 0);
  background-color: #b3401a;
  pointer-events: auto;
}
.untitled__shutters:before {
  bottom: 50%;
  -webkit-animation: openTop 5s infinite;
          animation: openTop 5s infinite;
}
@-webkit-keyframes openTop {
  0% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
            animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
  }
  40% {
    transform: translate3d(-50%, -65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  70% {
    transform: translate3d(-50%, -65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  100% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
            animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
}
@keyframes openTop {
  0% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
            animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
  }
  40% {
    transform: translate3d(-50%, -65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  70% {
    transform: translate3d(-50%, -65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  100% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
            animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
}
.untitled__shutters:after {
  top: 50%;
  -webkit-animation: openBottom 5s infinite;
          animation: openBottom 5s infinite;
}
@-webkit-keyframes openBottom {
  0% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
            animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
  }
  40% {
    transform: translate3d(-50%, 65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  70% {
    transform: translate3d(-50%, 65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  100% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
            animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
}
@keyframes openBottom {
  0% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
            animation-timing-function: cubic-bezier(0.8, 0, 0.1, 1);
  }
  40% {
    transform: translate3d(-50%, 65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  70% {
    transform: translate3d(-50%, 65vmax, 0);
    animation-timing-functon: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
  100% {
    transform: translate3d(-50%, 0, 0);
    -webkit-animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
            animation-timing-function: cubic-bezier(0.6, 0.04, 0.98, 0.335);
  }
}
.untitled__slides {
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  background-color: #b3401a;
}
.untitled__slide {
  position: absolute;
  height: 100%;
  width: 100%;
  opacity: 0;
  -webkit-animation: showHideSlide infinite 20s steps(1);
          animation: showHideSlide infinite 20s steps(1);
}
@-webkit-keyframes showHideSlide {
  0% {
    opacity: 1;
    pointer-events: auto;
    z-index: 1;
  }
  25% {
    opacity: 0;
    pointer-events: none;
    z-index: -1;
  }
  100% {
    opacity: 0;
    pointer-events: none;
    z-index: -1;
  }
}
@keyframes showHideSlide {
  0% {
    opacity: 1;
    pointer-events: auto;
    z-index: 1;
  }
  25% {
    opacity: 0;
    pointer-events: none;
    z-index: -1;
  }
  100% {
    opacity: 0;
    pointer-events: none;
    z-index: -1;
  }
}
.untitled__slide:nth-child(1) {
  -webkit-animation-delay: 0s;
          animation-delay: 0s;
}
.untitled__slide:nth-child(1) .untitled__slideBg {
  background-image:  url('./aaaa.jpg');
}
.untitled__slide:nth-child(2) {
  -webkit-animation-delay: 5s;
          animation-delay: 5s;
}
.untitled__slide:nth-child(2) .untitled__slideBg {
  background-image: url('./bbbb.jpg');
}
.untitled__slide:nth-child(3) {
  -webkit-animation-delay: 10s;
          animation-delay: 10s;
}
.untitled__slide:nth-child(3) .untitled__slideBg {
  background-image: url('./cccc.jpg');
}
.untitled__slide:nth-child(4) {
  -webkit-animation-delay: 15s;
          animation-delay: 15s;
}
.untitled__slide:nth-child(4) .untitled__slideBg {
  background-image: url('./dddd.jpg');
}
.untitled__slideBg {
  position: relative;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  background-size: cover;
  background-position: center;
  background-color: #b3401a;
  background-blend-mode: hard-light;
  opacity: 1;
  z-index: -1;
  -webkit-animation: bgInOut 5s infinite;
          animation: bgInOut 5s infinite;
}
@-webkit-keyframes bgInOut {
  0% {
    transform: rotate(-45deg) scale(1.1);
    -webkit-animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
            animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
  }
  33% {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(0deg);
  }
  66% {
    transform: rotate(0deg);
    -webkit-animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
            animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
  }
  100% {
    transform: rotate(45deg) scale(0.9);
  }
}
@keyframes bgInOut {
  0% {
    transform: rotate(-45deg) scale(1.1);
    -webkit-animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
            animation-timing-function: cubic-bezier(0.165, 0.84, 0.44, 1);
  }
  33% {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(0deg);
  }
  66% {
    transform: rotate(0deg);
    -webkit-animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
            animation-timing-function: cubic-bezier(0.895, 0.03, 0.685, 0.22);
  }
  100% {
    transform: rotate(45deg) scale(0.9);
  }
}
.untitled__slideContent {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate3d(-50%, -50%, 0);
  color: 0000;
  font-family: "Abril Fatface", sans-serif;
  line-height: 0.8;
  letter-spacing: -0.025em;
  z-index: 2;
  opacity: 1;
  text-shadow: 0 0 0.5em rgba(179, 64, 26, 0.25);
  mix-blend-mode: lighten;
}
.untitled__slideContent span {
  display: block;
  font-size: 15vmin;
}

.button {
  font-family: "Roboto Mono", sans-serif;
  text-decoration: none;
  font-weight: 800;
  text-transform: uppercase;
  font-size: 2vmin;
  display: inline-block;
  position: relative;
  border: 3px solid 0000;
  box-shadow: -0.5vmin 0.5vmin 0 rgba(255, 255, 255, 0.5);
  background: transparent;
  margin-top: 5vmin;
  mix-blend-mode: lighten;
  color: 0000;
  padding: 2vmin 2vmin 1.8vmin 2vmin;
  letter-spacing: 0.1em;
  text-shadow: none;
  line-height: 1;
  transform: translate3d(0.5vmin, -0.5vmin, 0);
  transition: all 100ms linear;
}
.button:hover {
  transform: translate3d(1vmin, -1vmin, 0);
  box-shadow: -1vmin 1vmin 0 rgba(255, 255, 255, 0.5);
  background: 0000;
  color: black;
}
.button:active {
  transform: translate3d(0px, 0px, 0);
  box-shadow: 0px 0px 0 rgba(255, 255, 255, 0.5);
}
</style>
</head>
<body>
<main>
  <aside>
    <ul class="asideList">
      <li><a href="home.jsp" class="asideAnchor">Home</a></li>
      <li><a href="donorLogin.jsp" class="asideAnchor">Donors</a></li>
      <li><a href="receiver.jsp" class="asideAnchor">Receivers</a></li>
      <li><a href="about.jsp" class="asideAnchor">About</a></li>
    </ul>
  </aside>
  <section>
    <input type="checkbox" id="myInput">
    <label for="myInput">
      <span class="bar top"></span>
      <span class="bar middle"></span>
      <span class="bar bottom"></span>
    </label>
  
<div class="untitled">
	<div class="untitled__slides">
		<div class="untitled__slide">
			<div class="untitled__slideBg"></div>
			<div class="untitled__slideContent">
				<span>SAVE</span> 
				<span>BLOOD</span>
				<a class="button" href="about.jsp" target="/black">Learn More</a>
			</div>
		</div>
		<div class="untitled__slide">
			<div class="untitled__slideBg"></div>
			<div class="untitled__slideContent">
				
				<span>SAVE</span> 
				<span>LIFE</span>
				<a class="button" href="about.jsp" target="/black">Learn More</a>
			</div>
		</div>
		<div class="untitled__slide">
			<div class="untitled__slideBg"></div>
			<div class="untitled__slideContent">
				<span>BE A DONOR</span> 
				<span>BE A HERO</span>
				<a class="button" href="about.jsp" target="/black">Learn More</a>
			</div>
		</div>
		<div class="untitled__slide">
			<div class="untitled__slideBg"></div>
			<div class="untitled__slideContent">
				<span>WELCOME TO</span> 
				<span>OUR FAMILY</span>
				<a class="button" href="about.jsp" target="/black">Learn More</a>
			</div>
		</div>
	</div>
	<div class="untitled__shutters"></div>
</div>
</section>
</main>

<a href="about.jsp" class="ua" target="_blank">
  <i class="fa fa-user"></i></a>
</body>
</html>