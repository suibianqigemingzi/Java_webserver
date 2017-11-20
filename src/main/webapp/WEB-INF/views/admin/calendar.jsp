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
    </style>

  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body> 
  <!--<![endif]-->
    

<div class="stats">
    <p class="stat"><span class="number">5</span>users</p>
    <p class="stat"><span class="number">19</span>Events</p>
</div>
<h1 class="page-title">Calendar</h1>

<div class="well">
    <h2>Upcoming Events</h2>
    <div id='calendar'></div>
</div>
<p>This sample is rendered with <a target="_blank" href="http://arshaw.com/fullcalendar/">Full Calendar</a> with no custom styling.</p>

        </div>
    </div>


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>
    
    
    
    
    
    
    
    
    
    
    
    

  </body>
</html>


