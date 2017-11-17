<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@include file="/commons/taglib2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <head>
    <meta charset="utf-8">
    <title>管理员登录</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/stylesheets/theme.css">
    <link rel="stylesheet" href="static/ui/lib/font-awesome/css/font-awesome.css">

    <script src="<%=ctx%>static/vendor/jquery-1.8.1.min.js" type="text/javascript"></script>

      <script type="text/javascript">
      function changeCode() {
      $('#overiimg').attr('src',
      '<%=ctx%>kaptcha/captcha-image?' + Math.floor(Math.random() * 100));
      }

      $(function() {
      Login.init();
      $('#overiimg').click(
      function() {
      $(this).attr(
      'src',
      '<%=ctx%>kaptcha/captcha-image?'
      + Math.floor(Math.random() * 100));
      })
      });
      </script>

  </head>
  <body>

    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">Your</span> <span class="second">Company</span></a>
            </div>
        </div>
    </div>
    

    <div class="container-fluid">
        
       <div class="row-fluid">
                <div class="dialog span4">
                            <div class="block">
                                        <div class="block-heading">登录</div>
                                                <div class="block-body">
                                                        <form>
                                                            <label>用户名:</label>
                                                            <input type="text" class="span12">
                                                            <label>口令:</label>
                                                            <input type="password" class="span12">
                                                            <a href="index.html" class="btn btn-primary pull-right">Sign In</a>

                                                            <div class="form-group">
                                                                <input type="text" name="vcode" id="vcode" class="code" />
                                                                <img src="<%=ctx%>kaptcha/captcha-image" id="overiimg"  name="overiimg"/>
                                                                <a href="javascript:void(0);" onclick="changeCode()">换一张</a>
                                                            </div>

                                                            <label class="remember-me"><input type="checkbox"> Remember me</label>
                                                            <div class="clearfix"></div>

                                                        </form>
                                                </div>
                                    </div>
                            <p class="pull-right" style=""><a href="http://www.portnine.com" target="blank">Theme by Portnine</a></p>

                            <p><a href="reset-password.html">Forgot your password?</a></p>
                        </div>
            </div>
    </div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>


  </body>
</html>


