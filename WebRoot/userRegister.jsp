<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 
<html> 
	<head>
		<title>JSP for UserRegisterForm form</title>
	    <jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel" data-role="header">
		<h1>Register a new account</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
	</div>
	<div data-role="content">
		<html:form action="/userRegister">
			<div data-role="fieldcontain">Basic Information</div>		
		    <div data-role="fieldcontain">Username<html:text property="username"/><html:errors property="username"/></div>
			<div data-role="fieldcontain">Password<html:password property="password"/><html:errors property="password"/></div>
			<div data-role="fieldcontain">Password Salt<html:text property="passwordsalt"/><html:errors property="passwordsalt"/></div>
			<div data-role="fieldcontain">More About You</div>
			<div data-role="fieldcontain">First Name<html:text property="firstname"/><html:errors property="firstname"/></div>
			<div data-role="fieldcontain">Last Name<html:text property="lastname"/><html:errors property="lastname"/></div>
			<div data-role="fieldcontain">Email<html:text property="email"/><html:errors property="email"/></div>			
			<div data-role="fieldcontain">Address</div>
			<div data-role="fieldcontain">Phone<html:text property="phone"/><html:errors property="phone"/></div>
			<div data-role="fieldcontain">State<html:text property="state"/><html:errors property="state"/></div>
			<div data-role="fieldcontain">City<html:text property="city"/><html:errors property="city"/></div>
			<div data-role="fieldcontain">Zipcode<html:text property="zipcode" value=""/><html:errors property="zipcode"/></div>
			<div data-role="fieldcontain">Company<html:text property="company"/><html:errors property="company"/></div>
			<div data-role="fieldcontain">Addressline1 : <html:text property="addressline1"/><html:errors property="addressline1"/></div>
			<div data-role="fieldcontain">Addressline2 : <html:text property="addressline2"/><html:errors property="addressline2"/></div>
			<html:submit/>
		</html:form>
		<html:errors property="register"/>	
	</div>
	</body>
</html>

