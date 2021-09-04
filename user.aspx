<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Paradise.user" %>

<!DOCTYPE html>
<html lang="en">

<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paradise</title>
    <link rel="stylesheet" href="Paradise.css">
    <link rel="stylesheet" href="http://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/944a0a6356.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form2" runat="server">
   <table>
    <div class="navbar">
        <img src="img/logo.png" alt="logo">
        <ul class="nav">
            <li><a href="#Home">  Home</a></li>
            <li><a href="#order"> Order Online</a></li>
            <li><a href="#reservation"> Reservation</a></li>
            <li><a href="#contact">Contact Us</a></li>
            <li><a href="#about"> About Us</a></li>
        </ul>
        <div class="right">
            
           <a href="profile.aspx">Profile&nbsp;&nbsp;<i class="fas fa-user-circle"></i></a> 
       </div>
       
    </div>
   </table>
    
    <div class="home" id="Home"><div class="text-part">
        <h1>Welcome</h1>
    <h3>
        PARADISE reimagines the wonders of Indian fare in a space that evokes a bygone era of a boisterous yet elegant India—all within the heart of Jhansi City.

<p>This is timeless India.</p> 
    </h3>
    <a href="img/paradise menu.pdf" style="text-decoration: none;" ><button class="menu">Menu</a></button>
    </div>
</div>
</div></div>
      
    <div class="order" id="order">
        <div class="text-part">
            <h1>Order Online</h1>
<a href="starter.aspx"><img src="img/starter.jpg" alt="" class="maggie"></a>
<a href="maincourse.aspx"><img src="img/main.jfif" alt="" class="maggie"></a>
    <a href="Dessert.aspx"><img src="img/dessert.jpg" alt="" class="maggie"></a>             
        </div>
        
    </div>
    <div class="reservation" id="reservation">
        <div class="text-part">
            <h1>Reservations</h1>
        <h3>
            If you would like to dine at <strong>PARADISE</strong> , kindly email <em>reserve.paradise@gmail.com</em>
            with name, phone number, preferred date, time, and number of guests. <br>

            Please note that, at this time, we are booking tables one week in advance and can accommodate party sizes of
            no more than 6.
        </h3>
        <a class="menu" href="reserve.aspx" style="text-decoration: none;" >Reserve</a></button> 
        </div>
    </div>
    </div>
    <div class="contact" id="contact">
        <div class="text-part">
            <h1>Contact Us</h1>
            <p>Kindly feel free to send us a message. We look forward to hearing from you and will be back in touch as soon as possible.</p>
            <p>Phn no.- 1234567890</p>
        </div>
    </div>
    </div>
    <div class="about" id="about">
        <div class="text-part">
            <h1>About us</h1>
            <p>We are a traditional cafe with the best Indian flavours.Everything that goes in your mouth has been highly approved by our talented team of chefs.as we all know, Indian spices are loved all over the globe, Hence we bring you the best food blended wit the mouth-licking Indian spices. we are happy to be there for every savory experience </p>
            <p>
                We started in 2019 with a food truck, we couldn't have imagined being named as one of the best cafe by our customers.we started our first restaurant in sipri bazar location of Jhansi with a concept of open dinning room. now because of all your love we are serving in five diferent locations in Jhansi. we came all the way because of your love and support.
     
            </p>
        </div>
    </div>
    </div>
    <footer>
        <div class="footer-bottom">
            
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="https://www.youtube.com/channel/UCeVMnSShP_Iviwkknt83cww"><i class="fa fa-youtube"></i></a></li>
             </ul>
             <p>copyright &copy;2021 Paradise. designed by <span>Team Paradise</span></p>
        </div>
    </footer>
        </form>
</body>
</html>