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
    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="<%=ctx%>static/ui/stylesheets/theme.css">
    <link rel="stylesheet" href="<%=ctx%>static/ui/lib/font-awesome/css/font-awesome.css">

    <script src="<%=ctx%>static/vendor/jquery-1.8.1.min.js" type="text/javascript"></script>
  </head>

  <body>
<style type="text/css">
    #line-chart {
        height:300px;
        width:800px;
        margin: 0px auto;
        margin-top: 1em;
    }
    .navbar-default .navbar-brand, .navbar-default .navbar-brand:hover {
        color: #fff;
    }
</style>
  <!--<![endif]-->
  <script type="text/javascript">
      function changeCode() {
          $('#overiimg').attr('src',
              "<%=ctx%>kaptcha/captcha-image?' + Math.floor(Math.random() * 100));
      }

      $(function() {
          $('#overiimg').click(
              function() {
                  $(this).attr(
                      'src',
                      '<%=ctx%>kaptcha/captcha-image?'
                      + Math.floor(Math.random() * 100));
              })
      });
  </script>
    
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
    <div class="span4 offset4 dialog">
        <div class="block">
            <div class="block-heading">Sign Up</div>
            <div class="block-body">
                <form>
                    <label>First Name</label>
                    <input type="text" class="span12">
                    <label>Last Name</label>
                    <input type="text" class="span12">
                    <label>Email Address</label>
                    <input type="text" class="span12">
                    <label>Username</label>
                    <input type="text" class="span12">
                    <label>Password</label>
                    <input type="password" class="span12">

                    <div class="form-group">
                        <input type="text" name="vcode" id="vcode" class="code" />
                        <img src="<%=ctx%>kaptcha/captcha-image" id="overiimg" name="overiimg" />
                        <a href="javascript:void(0);" onclick="changeCode()">换一张</a>
                    </div>

                    <a href="index.html" class="btn btn-primary pull-right">Sign Up!</a>
                    <label class="remember-me"><input type="checkbox"> I agree with the <a href="terms-and-conditions.html">Terms and Conditions</a></label>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <p><a href="privacy-policy.html">Privacy Policy</a></p>
    </div>
</div>

    </div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>


  </body>
</html>


