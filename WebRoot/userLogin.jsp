<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 <%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 <!DOCTYPE HTML>
 
<html> 
	<head>
		<title>JSP for UserLoginForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
		<html:form action="/userLogin"> 
		<div data-role="fieldcontain">
		<label for="username">Username</label><html:text property="username" styleId="username"></html:text></div>
		<div data-role="fieldcontain">
		<label for="password">Password</label><html:password property="password" styleId="password"></html:password></div>
		<html:submit/><html:reset/>
		</html:form>
		<br /><br />
		<html:errors property="login"/>
	</body>
</html>

