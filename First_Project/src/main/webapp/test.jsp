<%@page import="com.bsh.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>JEOLA DOING</title>
<script src="./jquery-3.6.0.js"></script>
    <style type="text/css">
    * {
	padding: 0;
	margin: 0;
}

body {
	font-family: 'Fauna One', serif;
	font-size: 20px;
}

li {
	list-style: none;
}

a {
	color: white;
}

a:hover, a:focus {
	color: white;
	text-decoration: none;
}


h1 {
	color: white;
	text-align: center;
	margin-top: 4%;
	font-size: 412.5%;
}


h1 > small {
	display: block;
	color: white;
}

h2 {
	font-size: 245%;
	margin-top: 140px;
}

h2:after {
	display: block;
	margin: 42px 0;
	content: "";
}

h3 {
	font-weight: bold;
}

h4 {
	font-size: 92%;
}

h6 {
	color: #F0F0F0;
}


h1 .logo {
	font-size: 230%;
	font-family: 'Brush Script MT', cursive;
	width: 200px;
	margin-left: -20px;
}

/* ELEMENTS */
.noir {
	display: block;
	background-color: black;
	padding: 18px;
	border: 3px solid white;
}

.vertical-list li {
	float: left;
}

.blue-border {
	border: 2px solid #114190;
}

.magenta-border {
	border: 2px solid #e11a61;
}

.purple-border {
	border: 2px solid #9d1098;
}

.red-border {
	border: 2px solid #9d102b;
}

/* END OF ELEMENTS */

.overflow {
	overflow: hidden;
}

.overlay {
	background-color: rgba(4,14,22,.83);
	height: 100%;
	width: 100%;
	padding-bottom: 80px;
}

#home {
	background: url("https://static.pexels.com/photos/232/apple-iphone-books-desk-large.jpg") no-repeat;
	width: 100%;
	background-size: cover;
}

#home nav {
	margin: 0 auto;
	width: 700px;
	padding-top: 80px;
}

#home nav ul {
	overflow: hidden;
}

#home nav ul li {
	width: 25%;
}

#home nav a {
	padding: 16px;
	padding-right: 30px;
	display: table-cell;
}

#home nav.fixed {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: black;
	z-index: 999;
	padding: 0;
	transition: background-color .8s;
	
}

#home nav.fixed ul {
    max-width: 700px;
	margin: 0 auto;
}


#about::before {
	height: 0px;
	width: 0px;
	border-left: 30px solid transparent;
	border-right: 30px solid transparent;
	border-top: 30px solid #131c23;
	margin: 0 auto;
	content: "";
	display: block;
}

.social-links {
	margin-top: 100px;
	overflow: hidden;
	padding: 0;
	display: table;
	margin: 0 auto;
	margin-top: 90px;
}

.social-links li {
	display: inline-table;
	margin-right: 10px;
}

.twitter {
	border-color: #55acee;
}

.linkedin {
	border-color: #0077b5;
}

.freecodecamp {
	border-color: #4a2b0f;
}

.twitter:hover {
	background-color: #55acee;
	transition: background-color .4s;
}

.linkedin:hover {
	background-color: #0077b5;
	transition: background-color .4s;
}

.freecodecamp:hover {
	background-color: #4a2b0f;
	transition: background-color .4s;
}


#about .info {
	display: flex;
	flex-direction: row;
}

#about h2 {
	color: #0d2435;
}

#about h2::after {
	border-bottom: 2px dashed #918D8D;
}

#about .info p {
	line-height: 270%;
}

#about .signature {
	font-family: 'Brush Script MT', cursive;
	font-size: 150%;
	float: right;
	color: #0d2435;
	opacity: .9;
}

#skill-set {
	margin-top: 80px;
	padding-bottom: 80px;
}

#skill-set ul {
	overflow: hidden;
}

#web-development-skills {
	background-color: #114190;
}


#automation-skills {
	background-color: #e11a61;
}

#misc-skills {
	background-color: #9d1098;
}

.skills {
	color: white;
}

.skills li {
	padding: 20px;
}

#portfolio {
	background-color: #423a3a;
	padding-bottom: 80px;
}

#portfolio h2 {
	color: #F0F0F0;
	margin-bottom: 140px;
}

#portfolio h2:after {
	border-bottom: 2px dashed #b4b4b4;
}

#portfolio .row {
	margin: 0px;
	box-sizing: border-box;
	padding: 0 60px;
}

#portfolio .heading {
	color: #F0F0F0;
	padding: 15px;
	text-align: center;
	position: absolute;
  font-size: 18px;
  letter-spacing: 2px;
}

#portfolio .heading span {
	color: #635757;
	display: block;
	margin: 40px 0px;
	font-size: 200%;
}

#portfolio .description {
	position: absolute;
	top: 0px;
	left: 0px;
	padding: 15px;
}

#portfolio .description > * {
	display: none;
	font-size: 72%;
}

#portfolio p {
	color: #F0F0F0;
	/*display: none;*/
	margin-bottom: 30px;
	line-height: 230%;
}

#portfolio p, .tools {
	width: 100%;
}

.description span {
	margin-left: 10px;
}

.description .tools {
	margin-top: 20px;
	overflow: hidden;
}

.description .tools li {
	margin-top: 5px;
	background-color: #114190;
	margin-right: 10px;
	padding: 10px;
	color: #F0F0F0;
}

#portfolio div section {
	cursor: pointer;
}

#portfolio div:nth-child(odd) section {
	background-color: #483F3F;
	padding: 10px;
	border: 3px solid #4D4343;
}

#portfolio div:nth-child(even) section {
	background-color: #3D3636;
	padding: 10px;
	border: 3px solid #393333;
}

#portfolio img {
	width: 100%;
}

#portfolio section {
	height: 100%;
	margin-bottom: 20px;
}

#portfolio .overlay {
	position: relative;
	padding-bottom: 0px;
	min-height: 550px;
  overflow: auto;
}

#portfolio .description h4 {
	color: white;
}

#portfolio .heading {
	position: relative;
	margin: 0 auto;
}

#portfolio section {
	width: 50%;
	float: left;
}

#portfolio section:hover .overlay img {
	opacity: 0;
	transition: opacity .32s;
}

#portfolio section:hover .description {
	top: 140px;
	transition: top .5s;
}

#portfolio section:hover .overlay .heading span {
	 -webkit-transform: rotate(180deg);
	 position: relative;
	 top: -80px;
	 left: -30px;
	 color: rgba(4,14,22,.83);;
}


#portfolio section:hover .overlay .description > * {
	display: block;
}

#portfolio section:hover .overlay .heading {
	position: absolute;
	top: -60px;
	transition: top .9s;
}


#contactee {
	background: url("https://res.cloudinary.com/dj7k0lade/image/upload/v1526689027/codepen/portfolio/map.jpg") no-repeat;
	background-size: cover;
}

#contactee .overlay {
	background: rgba(0,0,0,.968);
}

#contactee h2 {
	color: white;
}

#contactee h2:after {
	border-bottom: 2px dashed white;
}

#contactee form {
	position: relative;
}

#contactee .form-group label {
	display: block;
	color: white;
	font-weight: normal;
}

#contactee .form-group input, #contactee .form-group textarea {
	outline: none;
	border: 0;
	border-bottom: 6px solid #114190;
	padding: 9px;
	background-color: #2b2b2b;
	color: white;
}

#contactee .form-group input#emailTXT {
	width: 75%;
	border-bottom: 6px solid #e11a61;
}

#contactee .form-group input#emailTXT {
	border-bottom: 6px solid #e11a61;
}

#contactee .form-group input#subjectTXT {
	width: 55%;
	border-bottom: 6px solid #9d1098;
}

#contactee .form-group input#messageTXT {
	border-bottom: 6px solid #9d1098;
}

#contactee .form-group #messageTXT {
	border-bottom: 6px solid #9d102b;
	resize: none;
}

#contactee #submitBTN {
	color: white;
}

#contactee #submitBTN:hover {
	background-color: white;
	color: black;
	transition: background-color .4s;
}

#contactee #submitBTN span {
	margin-right: 20px;
}


#contactee .social-links li {
	margin-bottom: 20px;
}

/* Media Queries */

@media screen and (max-width: 1200px) {
	#portfolio [class^="col"] section {
		width: 80%;
		margin-right: auto;
		margin-left: auto;
		margin-bottom: 10px;
		min-height: 400px;
	}

	#portfolio .overlay {
		width: 100%;
		height: auto;
	}

	#portfolio img {
		width: 100%;
		height: auto;
	}

	#portfolio section:hover .overlay .heading span {
	 -webkit-transform: rotate(90deg);
	 top: 70px;
	 left: -240px;
	 position: relative;
	}
}

@media screen and (max-width: 790px) {
	body {
		font-size: 18px;
		text-align: center;
	}
  
  h2 {
    margin-top: 80px;
  }

	input {
		text-align: center;
	}

	#about img {
		display: block;
		margin: 0 auto;
		width: 30%;
	}
	
	#about .info {
		flex-direction: column-reverse;
	}

	#skill-set .skills {
		margin-top: 20px;
	}

	form {
		text-align: left;
	}

	#portfolio .description p {
		margin-top: 40px;
	}

	#portfolio section {
		font-size: 10px;
	}

	#portfolio .overlay > * {
		font-size: 200%;
	}

	#portfolio p, h6 {
		text-align: left;
	}

	#contactee textarea {
		width: 90%;
	}
}

@media screen and (max-width: 570px) {

	#home nav {
		width: inherit;
	}
	
	#about .signature {
		float: none;
	}

	#portfolio h2 {
		margin-bottom: 0;
	}

	#portfolio section img {
		display: none;
	}

	#portfolio section {
		width: 100%;
	}

	#portfolio .description > *  {
		display: block;
	}

	#portfolio .description {
		display: table-footer-group;
	}

	#portfolio .heading {
		display: table-header-group;
		font-size: 180%;
		text-align: left;
	}

	#portfolio .overlay {
		min-height: auto;
		padding: 20px;
	}

	#portfolio .description {
		top: 100px;
		position: static;
	}

	#portfolio section {
		min-height: auto;
	}

	#portfolio section:hover .overlay .heading {
	 position: relative;
	 top: -0px;
	 color: white;
	 -webkit-transition: none;
	}

	#portfolio .heading span {
		display: none;
	}
}

@media screen and (max-width: 480px) {
	
	.social-links li {
		display: block;
		width: 100%;
	}

	.social-links {
		width: 100%;
	}

	h1 {
		font-size: 300%;
	}

	#about img {
		width: 60%;
	}

	#skill-set #web-development-skills::before {
		display: none;
	}

	#skill-set .skills {
		width: 100%;
		display: block;
	}

	#portfolio .overlay {
		height: 70%;
	}

}
    </style>
</head>
<body>

<body>
		<!-- PORTFOLIO -->
		<section id="portfolio">
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Designed using the Selenium library - to fully automate the task of scraping the EGi news website. I then made use of the COM Excel object to create a spreadsheet and paste the headlines from the scraping into automatically created tabs revelant to the news sectors.
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>Python</li>
											<li>Selenium</li>
											<li>COM (Component Object Model)</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688773/codepen/portfolio/editorial_excel.jpg" alt="Editorial Monitoring Automated Excel Screenshot">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Editorial Monitoring Job - Automated</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->
						
							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Written using pure JavaScript and the STAND4S Network's quote API, users can do a general search for quotes, get a random quote or can search for quotes from particular authors. Twitter social integration is then included to allow them to tweet it.
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>HTML5</li>
											<li>CSS3</li>
											<li>JavaScript</li>
											<li>XML</li>
											<li>STAND4S Network API</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688815/codepen/portfolio/quote_machine.jpg" alt="Quote Machine in Action">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Quote Machine</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->

						<!-- COLUMN 3 -->
							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Was achieved using the Google Maps API to geocode user search terms, data was then retrieved from the Forecast IO API. Users can click on any day in the seven day cycle to get a quick summary on the predicated forecast.
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>Google Maps API</li>
											<li>Forecast API</li>
											<li>AJAX</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688847/codepen/portfolio/weather_app.jpg" alt="Weather Web Application Displaying the Weather for London">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Weather Web Application</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->

							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Made using AngularJS and AJAX using multiple asynchronous API calls within a closure. The search functionality made use of the ng-model and filter feature of the AngularJS Framework.  
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>AnuglarJS</li>
											<li>JavaScript</li>
											<li>Twitchtv API</li>
											<li>HTML &amp; CSS</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688882/codepen/portfolio/twitch_tv.jpg" alt="Twitchtv API screenshot">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Twitchtv JSON API</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->
                                                
							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Created using a mixture of pure JavaScript and JQuery, users are challenged to remember a sequence of steps based on the popular memory game Simon Says. Users also have the ability to swap between the normal Simon Says with default sounds and also the Animal Simon Says with fitting animal effects. 
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>JavaScript</li>
											<li>JQuery</li>
											<li>Less</li>
											<li>Font Awesome</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688912/codepen/portfolio/simon_says.png" alt="Simon Says Game">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Simon Says Animals</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->
										
							<!-- COLUMN 1 -->
							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											Made with a combination of JQuery &amp; Bootstrap. Players are free to choose whether they wish to play as X or O. They are then pitted against the Computer who throughout the game makes varying comments towards the player.
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>JQuery</li>
											<li>Bootstrap (Modal)</li>
											<li>HTML &amp; CSS</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688951/codepen/portfolio/tictactoe.png" alt="Tic Tac Toe Screenshot">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Tic Tac Toe</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->
						
						<!-- COLUMN 2 -->
							<!-- SECTION -->
							<section>
								<!-- OVERLAY -->
								<div class="overlay">
									<!-- DESCRIPTION -->
									<div class="description">
										<p>
											A real time Chat application built using the MeteorJS framework working alongside a MongoDB database. The App was fully tested to work on the Android Platform via MeteorJS' support for Cordova.
										</p>
										
										<h6>Tools<span class="glyphicon glyphicon-cog"></span></h6>
										<ul class="tools vertical-list">
											<li>MeteorJS</li>
											<li>JavaScript</li>
                                                                                        <li>MongoDB</li>
											<li>Stylus</li>
										</ul>
									</div>
									<!-- END OF DESCRIPTION -->
									
									<img src="https://res.cloudinary.com/dj7k0lade/image/upload/v1526688983/codepen/portfolio/chatter_box.png" alt="Chatterbox ">
									<h4 class="heading"><span class="glyphicon glyphicon-hand-up"></span>Chatterbox</h4>
								</div>
								<!-- END OF OVERLAY -->
							</section>
							<!-- END OF SECTION -->
					</section>
					<!-- END OF PORTFOLIO -->
					</div>
		<script type="text/javascript">
		$(document).ready(function(){

			$("nav a").on("click", function(event){
				event.preventDefault();
				$("nav").addClass("fixed");
				id = ($(this).attr("href"));
				scrollVertical = $(id).offset().top;

				$("body, html").animate({scrollTop: scrollVertical});
			});

			$(document).on("scroll", function(){
				secondPage = $("nav li:nth-child(2) a").attr("href");

				if ( $("body").scrollTop() >= $("nav").height() )
				{
					$("nav").addClass("fixed");
				} else {
					$("nav").removeClass("fixed");
				}
			});

		});
		</script>
</body>
</html>