<%--<%@ Page Title="TestPage" Langauge="c#" AutoEventWireup="true" CodeFile ="Login.aspx.cs" Inherits="Login" %>--%>

<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <%-- <link href="../Content/Site.css" rel="stylesheet" type="text/css" />--%>
    <link href="../Content/css/bootstrap.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">


            <li><a href="../Default.aspx">Home</a></li>
        </ul>
    </div>
    <%-- <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Inventory Management System</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
                         

              <li><a href="../Default.aspx">Home</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>--%>
    <%--  <a href="../Default.aspx">
        <img src="../home_button.png" width="42" height="42">
    </a>--%>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p>
                    <img src="../images/warehouse1.png" width="100%" />
                </p>
            </div>
        </div>

        <div class="row">
            <%--<div class="col-lg-8">   <h1>Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a href="#" class="btn btn-primary btn-lg" role="button">Learn more &raquo;</a></p></div>--%>
            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Login</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" runat="server">
                            Username:
                            <input type="text" required name="UserName" class="form-control" id="txtUsername" runat="server"><br>
                            Password:
                            <input type="password" required name="pwd" class="form-control" id="txtPassword" runat="server">
                            <input type="submit" onserverclick="LogIn" class="btn btn-default" value="Submit" runat="server"><br />
                            <input type="button" onclick="location.href = '../Account/frmRegistration.aspx';" value="Register" class="btn btn-default" runat="server"/>
                        </form>
                    </div>
                </div>
                <label id="LoginFailure" runat="server" visible="false" style="color: red">Invalid Username and/or passwords</label>
            </div>
        </div>


        <div id="footer" class="alert alert-info">

            <button type="button" onclick="location.href = '../MainHomePage/Features.aspx';">Features</button>
            <button type="button" onclick="location.href = '../MainHomePage/AboutUs.aspx';">About Us</button>
            <button type="button" onclick="location.href = '../MainHomePage/ContactUs.aspx';">Contact Us</button>
            <button type="button" onclick="location.href = '../MainHomePage/Help.aspx';">Help</button>
            <br />
        </div>
    </div>

</body>
</html>


