<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@include file="/commons/taglib2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/lib/bootstrap/css/bootstrap.css">
    <%--<link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/lib/bootstrap/css/bootstrap-responsive.css">--%>
    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/stylesheets/theme.css">
    <%--<link rel="stylesheet" href="<%=ctx%>static/ui/static/ui/lib/font-awesome/css/font-awesome.css">--%>

    <script src="<%=ctx%>static/vendor/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->
    
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
        .Conframe {
            border-radius: 0px;
            border: 0px solid #b3baca;
            background: #FFF;
            position: absolute;
            left: 10px;
            top: 0px;
            overflow: auto;
            right: 8px;
            bottom: 0px;
            z-index: 999;
            padding: 0px;
        }

        #Conframe {
            border: none;
            height: 100%;
            width: 100%;
        }
        .content {
            position: relative;
            min-height: 800px;
            background: #fff;
            margin-left: 240px;
            border-left: 1px solid #cccccc;
            padding: 15px 15px 0px 15px;
        }
    </style>
  </head>

  <body> 

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">
                    
                    <li id="fat-menu" class="dropdown">
                        <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> Jack Smith
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">Settings</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">Your</span> <span class="second">Company</span></a>
            </div>
        </div>
    </div>


    <div class="container-fluid">

        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
                  <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>Dashboard</div>
                    <ul id="dashboard-menu" class="nav nav-list collapse in">
                        <li ><a target="Conframe" href="<%=ctx%>admin/home"><span class="fa fa-caret-right"></span>Home</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/userlist"><span class="fa fa-caret-right"></span>User List</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/user"><span class="fa fa-caret-right"></span>User Item</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/gallery"><span class="fa fa-caret-right"></span>Gallery</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/calendar"><span class="fa fa-caret-right"></span>Calendar</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/faq"><span class="fa fa-caret-right"></span>Faq</a></li>
                        <li ><a target="Conframe" href="<%=ctx%>admin/help"><span class="fa fa-caret-right"></span>Help</a></li>

                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="sign-in.html">Sign In</a></li>
                  <li ><a href="sign-up.html">Sign Up</a></li>
                  <li ><a href="reset-password.html">Reset Password</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-exclamation-sign"></i>Error Pages</div>
                <ul id="settings-menu" class="nav nav-list collapse in">
                  <li ><a href="403.html">403 page</a></li>
                  <li ><a href="404.html">404 page</a></li>
                  <li ><a href="500.html">500 page</a></li>
                  <li ><a href="503.html">503 page</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                  <li ><a href="privacy-policy.html">Privacy Policy</a></li>
                  <li ><a href="terms-and-conditions.html">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <%--<div class="span9">--%>
            <%--<script type="text/javascript" src="lib/jqplot/jquery.jqplot.min.js"></script>--%>
            <%--<script type="text/javascript" charset="utf-8" src="javascripts/graphDemo.js"></script>--%>
        <%--</div>--%>
        <div class="content">
            <div class="Conframe">
                <iframe name="Conframe" id="Conframe" ></iframe>
            </div>
        </div>
    <footer>
        <hr>
        <!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
        <p class="pull-right">A <a href="http://www.portnine.com/bootstrap-themes" target="_blank">Free Bootstrap Theme</a> by <a href="http://www.portnine.com" target="_blank">Portnine</a></p>
        
        
        <p>&copy; 2012 <a href="http://www.portnine.com">Portnine</a></p>
    </footer>
    

    

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>
    
    
    
    
    
    
    
    
    
    
    
    

  </body>
</html>


