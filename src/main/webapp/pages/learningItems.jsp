<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
	 <link rel="stylesheet" href="/CSS/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <!-- header start -->
    <div class="headerL">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <img src="images/logo2.png" width="125px" alt="Not found database erroe!!">
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li> <a href="/root">Learning</a> </li>
                        <li> <a href="/root">IQ Test</a> </li>
                        <li> <a href="/root">Profile</a> </li>
                        <li> <a href="/logout">Logout</a> </li>
                    </ul>
                </nav>
                <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
            </div>
        
            <div class="row">
                <div class="col2">
                    <h1>Your Interests <br> My Interests</h1>
                    <p>
                        If they can't learn the way we teach, <br> we teach the way they learn.
                        
                        <a href="index.html" class="btn"> Back to Home &#8594;</a>
                    </p>
                </div>
                <div class="col2">
                    <img src="images/img22.png" height="400px"width="400px" alt="Not found! DBMS Error!">
                </div>
            </div>
        </div>
    </div>
    <!-- Header Complete -->

   <!-- body start     -->

   <!-- <div class="catagories">
    <div class="small-container">
        <div class="row">
            <div class="col3">
                <img src="images/image1.webp" alt="not Found">
            </div>
            <div class="col3"><img src="images/img3.png" alt="Not Found"></div>
            <div class="col3"><img src="images/img4.png" alt="Not Found"></div>
        </div>
    </div>
</div> -->

    <!-- Learn things -->
<div class="header2">
 <div class="container">
    <div class="row">
        <div class="col2">
            <h1>Learn Colors <br> The way you can learn.</h1>
            <p>
                Here <br>
                You can learn about <b>Colors</b> <br>
                after clicking below buttton <br>
                Lets start <br>
                
                <a href="/root" class="btn"> Learn Color &#8594;</a>
            </p>
        </div>
        <div class="col2">
            <img src="images/COLOR.jpg" height="600px"width="600px" alt="Not found! DBMS Error!">
        </div>
    </div>

    <!-- fruit -->
    <div class="row">
        <div class="col2">
            <h1>Learn about Fruits <br> The way you can learn.</h1>
            <p>
                Here <br>
                You can learn about <b>Fruits</b> <br>
                after clicking below buttton <br>
                Lets start <br>
                
                <a href="/root" class="btn"> Learn Fruits &#8594;</a>
            </p>
        </div>
        <div class="col2">
            <img src="images/FRUITS.webp" height="600px"width="600px" alt="Not found! DBMS Error!">
        </div>
    </div>
    <!-- fruit finished  -->
    <!-- bird -->
    <div class="row">
        <div class="col2">
            <h1>Learn about birds <br> The way you can learn.</h1>
            <p>
                Here <br>
                You can learn about <b>Birds</b><br>
                after clicking below buttton <br>
                Lets start <br>
                
                <a href="/root" class="btn"> Learn Birds &#8594;</a>
            </p>
        </div>
        <div class="col2">
            <img src="images/BIRDS.jpg" height="600px"width="600px" alt="Not found! DBMS Error!">
        </div>
    </div>
    <!-- bird finished -->

 </div>
</div>


   <!-- Learn finished -->
   <!-- body finished  -->
   
   <!-- Footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download our app</h3>
                    <p>Available on Playystore and Appstore</p>
                    <div class="app-logo">
                        <img src="images/play-store.png" >
                        <img src="images/app-store.png" >
                    </div>
                </div>
                <div class="footer-col-2">
                   <img  class="logo" src="/images/logo2.png"  alt="Not found database erroe!!">
                    <p>Our Purpose is to sutainably make
                        the pleasure and benefits of sports
                    to the many </p>
                </div>
                <div class="footer-col-3">
                    <h3>Useful Links
                    </h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Posts</li>
                        <li>Return Policy</li>
                        <li>Join Affeliate</li>
                    </ul>
                </div>
                <div class="footer-col-4">
                    <h3>Follow us
                    </h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Instagram</li>
                        <li>Youtube</li>
                        <li>Teligram</li>
                    </ul>
                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2021 - AUTI_Q</p>
        </div>
    </div>
    <!-- --- js for toogle menu ---- -->
    <script>
        var MenuItems = document.getElementById("MenuItems");
        MenuItems.style.maxHeight = "0px";
        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            }
            else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>
</body>

</html>