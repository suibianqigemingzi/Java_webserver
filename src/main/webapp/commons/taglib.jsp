<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
	<%
		String path = request.getContextPath();
		String ctx = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
		request.setAttribute("ctx", ctx);
	%>
	<%--<script type="text/javascript"	src="${ctx}/assets/assets/jquery-1.8.3.min.js"></script>--%>
	<input type="hidden" value="${ctx}" id="ctx" />
</body>
</html>