<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for employeeLoginForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>

	<div id="northpanel" data-role='header'>
		<h1>Thank you</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
	</div>
	<div id="centerpanel" data-role='content'>
		<h2>Your order has been placed!</h2>
		<a data-role='button' href='/database/index.do' data-theme='b' data-icon='home'>Return Home</a>
	</div>
	</body>
</html>

