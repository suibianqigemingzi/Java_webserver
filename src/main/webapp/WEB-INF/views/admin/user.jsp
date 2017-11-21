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

<body>


<h1 class="page-title">User</h1>

<div class="btn-toolbar">
  <button class="btn btn-primary"><i class="icon-save"></i> Save</button>
  <a href="#myModal" data-toggle="modal" class="btn">Delete</a>
  <div class="btn-group">
  </div>
</div>

        <div class="well">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
                <li><a href="#profile" data-toggle="tab">Password</a></li>
              </ul>

              <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab">
                          <label>Username</label>
                          <input type="text" value="jsmith" class="input-xlarge">

                        </form>
                    </div>

                    <div class="tab-pane fade" id="profile">
                        <form id="tab2">
                          <label>New Password</label>
                          <input type="password" class="input-xlarge">
                            <div>
                              <button class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
              </div>
        </div>


      <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Delete Confirmation</h3>
        </div>
        <div class="modal-body">
          <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
        </div>
        <div class="modal-footer">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
          <button class="btn btn-danger" data-dismiss="modal">Delete</button>
        </div>
      </div>
<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<%=ctx%>static/ui/lib/bootstrap/js/bootstrap.js"></script>


</body>
</html>


