<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dessert.aspx.cs" Inherits="Paradise.Dessert" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Starter</title>
     <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700i" rel="stylesheet">

    <style>
    
    * {
    margin: 0;
    padding: 0;
}
body {
    background-color: #ef4478;
    font: normal 13px/1.5;
    font-family: 'Roboto Condensed', sans-serif;
    color: #333;
}
.wrapper {
    width: 705px;
    margin: 20px auto;
    padding: 20px;
}
h1 {
    display: inline-block;
    background-color: #fff;
    color: #ef4478;
    font-size: 16px;
    font-weight: normal;
    text-transform: uppercase;
    padding: 4px 20px;
    float: left;
    border-radius: 50px;
}
        
.clear {
    clear: both;
}
.items {
    display: block;
    margin: 20px 0;
}
.item {
    background-color: #fff;
    float: left;
    margin: 0 10px 10px 0;
    width: 205px;
    padding: 10px;
     
}
.item img {
    display: block;
    margin: auto;
            height: 150px;
            width: 187px;
        }
h2 {
    font-size: 12px;
    display: block;
    border-bottom: 1px solid #ccc;
    margin: 0 0 10px 0;
    padding: 0 0 5px 0;
}
button {
    border: 1px solid #ef4478;
    padding: 4px 14px;
    background-color: #ef4478;
    color: #fff;
    text-transform: uppercase;
    float: right;
    margin: 5px 0;
    font-weight: 400;
    cursor: pointer;
    font-family: 'Roboto Condensed', sans-serif;
    border-radius: 50px;
    
}
        button:focus{
            outline: none !important;
        }
span {
    float: right;
}
        
        p{
            font-size: 14px;
        }
.shopping-cart {
    display: inline-block;
    background: url(img/cart.png) no-repeat 0 0;
    width: 24px;
    height: 24px;
    margin: 0 10px 0 0;
}
    footer{
    bottom: 0;
    left: 0;
    right: 0;
    background: #111;
    height: auto;
    width: 100vw;
    font-family: "Open Sans";
    padding-top: 40px;
    color: #fff;
}
.footer-content{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
}
.footer-content h3{
    font-size: 1.8rem;
    font-weight: 400;
    text-transform: capitalize;
    line-height: 3rem;
}
.footer-content p{
    max-width: 500px;
    margin: 10px auto;
    line-height: 28px;
    font-size: 14px;
}
.socials{
    list-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 1rem 0 3rem 0;
    margin-left: -54px;
}
.socials li{
    margin: 0 10px;
}
.socials a{
    text-decoration: none;
    color: #fff;
}
.socials a i{
    font-size: 1.1rem;
    transition: color .4s ease;
}
.socials a:hover i{
    color: aqua;
}
.footer-bottom{
    background: #000;
    width: 100vw;
    padding:20px 0;
    text-align: center;
}
.footer-bottom p{
    font-size: 14px;
    word-spacing: 2px;
    text-transform: capitalize;
}
.footer-bottom span{
    text-transform: uppercase;
    opacity: .4;
    font-weight: 200;
}
    </style>
</head>
<body>
   <br><br><br>
    <!-- wrapper -->
<div class="wrapper">
     <a href="user.aspx"><h1>BACK</h1></a> 
 <span><i class="shopping-cart"></i></span>

    <div class="clear"></div>
    <!-- items -->
    <div class="items">
        <!-- single item -->
        <div class="item">
            <img src="one.jpg" alt="item" />
            <br>
             <h2>ITEM 1</h2>

            <p>PRICE: $449 
            </p>
            <button class="add-to-cart" type="button">Add to cart</button>
        </div>
        <!--/ single item -->
        <!-- single item -->
        <div class="item">
            <img src="two.jpg" alt="item" />
            <br>
             <h2>ITEM 1</h2>

            <p>PRICE: $449
            </p>
            <button class="add-to-cart" type="button">Add to cart</button>
        </div>
        <!--/ single item -->
        <!-- single item -->
        <div class="item">
            <img src="three.jpg" alt="item" />
            <br>
             <h2>ITEM 1</h2>

            <p>PRICE: $449
            </p>
            <button class="add-to-cart" type="button">Add to cart</button>
            
        </div>
        <!--/ single item -->
         
    </div>
    <!--/ items -->
</div>
    
<!--/ wrapper -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="scripts.js">

</script>
</body>
</html>