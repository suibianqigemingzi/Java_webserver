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

  <table class="table">
    <tbody>
    <tr>
      <th style="width:30%">操作系统</th>
      <td>${props['os.name']} ${props['os.version']}</td>
    </tr>
    <tr>
      <th style="width:30%">JAVA运行环境</th>
      <td>${props['java.runtime.name']} ${props['java.runtime.version']}</td>
    </tr>
    <tr>
      <th style="width:30%">JAVA虚拟机</th>
      <td>${props['java.vm.name']} ${props['java.vm.version']}</td>
    </tr>
    <tr>
      <th style="width:30%">系统用户</th>
      <td>${props['user.name']}</td>
    </tr>
    <tr>
      <th style="width:30%">用户主目录</th>
      <td>${props['user.home']}</td>
    </tr>
    <tr>
      <th style="width:30%">用户工作目录</th>
      <td>${props['user.dir']}</td>
    </tr>
    <tr>
      <th style="width:30%">用户临时目录</th>
      <td>${props['java.io.tmpdir']}</td>
    </tr>
    <tr>
      <th style="width:30%">最大内存</th>
      <td><fmt:formatNumber value="${maxMemoryMB}" pattern="#.00"/> MB</td>
    </tr>
    <tr>
      <th style="width:30%">已用内存</th>
      <td><fmt:formatNumber value="${usedMemoryMB}" pattern="#.00"/> MB</td>
    </tr>
    <tr>
      <th style="width:30%">可用内存</th>
      <td><fmt:formatNumber value="${useableMemoryMB}" pattern="#.00"/> MB</td>
    </tr>
    </tbody>
  </table>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>
    

  </body>
</html>


