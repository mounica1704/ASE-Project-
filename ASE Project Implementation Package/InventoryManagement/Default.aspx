<%--<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Account_Login" Async="true" %>



--%>
<html>
<body>
    <style>
        body {
            background-image: url('../inventory_background.jpg');
            background-size:1360px 600px;
        }
    </style>
    <div id="header" style="background-color:#b9b0ad;">
   <h1 style="margin-bottom:0;">Inventory Management system</h1> </div>


    
  
<div id="menu" style="background-color:#FFD700; border-collapse:collapse;height:560px;width:100px;float:center;">
 
    <div id="sidebar">
        <button type="button" onclick="location.href = 'Account/Login.aspx';">User Login</button>
    </div>

    <button type="button" onclick="location.href = 'Account/AdminLogin.aspx';">Admin Login</button>
</div>      

 

    <div id="footer" style="background-color:#b9b0ad;clear:both;text-align:center;">
        
        <button type="button" onclick="location.href = 'MainHomePage/Features.aspx';">Features</button>
        <button type="button" onclick="location.href = 'MainHomePage/AboutUs.aspx';">About Us</button>
        <button type="button" onclick="location.href = 'MainHomePage/ContactUs.aspx';">Contact Us</button>
        <button type="button" onclick="location.href = 'MainHomePage/Help.aspx';">Help</button>
        <button type="button" onclick="location.href = 'Account/frmRegistration.aspx';">Register</button><br />
    </div>
    
    </body>
</html>




