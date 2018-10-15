<%@ Page Language="VB" ContentType="text/html" ResponseEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" 
      content="Welcome to Coffee Buzz. We are dedicated to filling all your caffeine needs through our quality coffees and teas.">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>CoffeeBuzz Coffee | Tea - Moncton, New Brunswick</title>
<link rel="apple-touch-icon" sizes="180x180" href="../img/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="../img/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="../img/icons/favicon-16x16.png">
<link rel="manifest" href="../img/icons/site.webmanifest">
<link rel="mask-icon" href="../img/icons/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<link href="../css/normalize.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="../css/chapter13.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- PAGE HEADER GOES HERE -->
	<header class="banner-area">
		<h1>Coffee Buzz</h1>
		<p><span>Provide all the caffeine that you need to power your life</span></p>
		<!-- PAGE NAVIGATION GOES HERE -->
		<nav>
			<ul>
				<li><a href="index.htm"><i class="fas fa-home"></i> HOME</a></li>
				<li>
					<a href="#" title="Check out our menu"><i class="fas fa-utensils"></i> MENU</a>
					<ul>
	                	<li><a href="coffee_menu.htm">COFFEE</a></li>
	                    <li><a href="#">TEA</a></li>
	                    <li><a href="#">DONUTS</a></li>
	                    <li><a href="#">MUFFINS</a></li>
	                </ul>

				</li>
				<li><a href="#" title="How to contact us"><i class="fas fa-envelope"></i> CONTACT</a></li>
				<li><a href="#" title="More about Coffee Buzz"><i class="fas fa-info-circle"></i> ABOUT</a></li>
		  	</ul>		
		</nav>
	</header>	   
   	<!-- MAIN PAGE CONTENT GOEST HERE -->	
<!--    	<div id="wrapper"> -->
	    <main>	
			<section id="main-content" class="row">
				<hr>
				<h2>Thank you</h2>
				<hr>
				<div id="careers">
					<p style="font-weight: bold;">The following information was received on:
							<%Response.Write(Now())%>
					</p>
					<table>
						<thead>
							<tr>
								<th>Description</th>
								<th>Value Entered</th>
							</tr>
						</thead>
						<tbody>
							<%
								For Each key as String in Request.Form.Keys
									If(Not key="send")
										Response.Write("<tr><td>" & key & "</td><td>" & Request.Form(key) & "</td></tr>")
									End If
								Next
							%>
						</tbody>
					</table>
				</div>
			</section>
	    </main>
	<!-- </div> -->
    <!-- PAGE SIDEBAR NAVIGATION GOES HERE -->
    <aside>
		<ul>
			<li>To learn more</li>
			<li><a href="" title="Check out our music">Lounge <i class="fas fa-drum"></i></a></li>
			<li><a href="careers.htm" title="Careers at CoffeeBuzz">Careers <i class="fas fa-users"></i></a></li>
			<li><a href="news.html" title="Read our newsletter">Newsletter <i class="fas fa-newspaper"></i></a></li>
			<li><a href="" title="Learn more about fair trade coffee">Fair Trade <i class="fas fa-coffee"></i></a></li>
		</ul>
		<div class="promo">
			<h3>Pay with your phone</h3>
			<p>Download our app to pay using your mobile phone</p>
			<p><a href="#"><img src="../img/apple_pay-dark.png" alt="Download iphone app" /></a></p>
			<p><a href="#"><img src="../img/google-play-dark.png" alt="Download android app" /></a></p>
  		</div>				
    </aside>
  	<!-- PAGE FOOTER GOES HERE -->
	<footer>
   		<p><em>Copyright &copy;2018 CoffeeBuzz</em></p>
	</footer>

</body>
</html>