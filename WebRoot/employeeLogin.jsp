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
		<div data-role='header'>
			<h1>Employee Login</h1>
			<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<html:form action="/employeeLogin"> 
		<div data-role="fieldcontain">
	    <label for="loginname">Login Name</label><html:text property="loginname" styleId="loginname"></html:text></div>
		<div data-role="fieldcontain">
		<label for="password">Password</label><html:password property="password" styleId="password"></html:password></div>
			<html:submit/><html:reset/>
		</html:form>
		<br /><br />
		<html:errors property="employeelogin"/>

	</body>
</html>

