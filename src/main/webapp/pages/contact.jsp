<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OUR TEAM SECTION</title>
	<link rel="stylesheet" href="/CSS/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <img src="images/logo2.png" width="125px" alt="Not found database erroe!!">
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li> <a href="/">Home</a> </li>
                        <li> <a href="/learningItems">Learning</a> </li>
                        <li> <a href="/about">About</a> </li>
                        <li> <a href="/login">Sign In</a> </li>
                    </ul>
                </nav>
                <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
            </div>
    </div>
</div>

<section>
    <h1 class="title">our team</h1>
    <div class="team-row">
        <div class="member">
            <img src="images/rashed.jpg" alt="">
            <h2>MD. Rashedul Alam</h2>
            <p>3rd year 2nd semester <br> Dept of CSE <br> Jagannath University <br>Dhaka, Bangladesh <br>Email: rashedulalam711@gmail.com <br></p>
        </div>
        <div class="member">
            <img src="images/mehedi.jpg" alt="">
            <h2>Mehedi Hasan</h2>
            <p>9th semester <br> Dept of CSE <br> IUBAT - International University of Business Agriculture and Technology <br>Email: mehedi04725466@gmail.com <br></p>
        </div>
        
    </div>
</section>

<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    /* body{
        background-color: #eee;
        font-family: "Century Gothic";
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    } */
    
    
    .title{
        text-align: center;
        text-transform: capitalize;
        color: #726a95;
        margin: 10px 0;
        position: relative;
    }
    
    .title::after{
        content: "";
        position: absolute;
        width: 20%; height: 2px;
        background-image: linear-gradient(to left, transparent 5%, #726a95);
        bottom: -10px; left: 50%;
        transform: translate(-50%);
    }
    
    .team-row{
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        padding: 40px 0;
    }
    
    .member{
        flex: 1 1 250px;
        margin: 20px;
        text-align: center;
        padding: 20px 10px;
        cursor: pointer;
        max-width: 300px;
        transition: all 0.3s;
    }
    
    .member:hover{
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        transform: translateY(-20px);
    }
    
    .member img{
        display: block;
        width: 150px; height: 150px;
        object-fit: cover;
        border:4px solid #726a95;
        border-radius: 50%;
        margin: 0 auto;
    }
    
    .member h2{
        text-transform: uppercase;
        font-size: 24px;
        color: #726a95;
        margin: 15px 0;
    }
    
    .member p{
        font-size: 15px;
        color: #838383;
        line-height: 1.6;
    }
</style>
</body>
</html>