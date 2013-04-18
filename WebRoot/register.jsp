<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for RegisterForm form</title>
	    <jsp:include page="/script.jsp" />
	</head>
	<body>
		<html:form action="/register"> 
		 
			<h2>Basic Information</h2>		
		    <div data-role="fieldcontain"><label for="username">Username</label><html:text property="username" styleId="username"/><html:errors property="username"/></div>
			<div data-role="fieldcontain"><label for="password">Password</label><html:password property="password" styleId="password"/><html:errors property="password"/></div>
			<div data-role="fieldcontain"><label for="passwordsalt">Password Salt</label><html:text property="passwordsalt" styleId="passwordsalt"/><html:errors property="passwordsalt"/></div>
			<h2>More About You</h2>
			<div data-role="fieldcontain"><label for="firstname">First Name</label><html:text property="firstname" styleId="firstname"/><html:errors property="firstname"/></div>
			<div data-role="fieldcontain"><label for="lastname">Last Name</label><html:text property="lastname" styleId="lastname"/><html:errors property="lastname"/></div>
			<div data-role="fieldcontain"><label for="email">Email</label><html:text property="email" styleId="email"/><html:errors property="email"/></div>			
			<h2>Address</h2>
			<div data-role="fieldcontain"><label for="phone">Phone</label><html:text property="phone" styleId="phone"/><html:errors property="phone"/></div>
			<div data-role="fieldcontain"><label for="state">State</label><html:text property="state" styleId="state"/><html:errors property="state"/></div>
			<div data-role="fieldcontain"><label for="city">City</label><html:text property="city" styleId="city"/><html:errors property="city"/></div>
			<div data-role="fieldcontain"><label for="zipcode">Zipcode</label><html:text property="zipcode" value="" styleId="zipcode"/><html:errors property="zipcode"/></div>
			<div data-role="fieldcontain"><label for="company">Company</label><html:text property="company" styleId="company"/><html:errors property="company"/></div>
			<div data-role="fieldcontain"><label for="addressline1">Address Line 1</label><html:text property="addressline1" styleId="addressline1"/><html:errors property="addressline1"/></div>
			<div data-role="fieldcontain"><label for="addressline2">Address Line 2</label><html:text property="addressline2" styleId="addressline2"/><html:errors property="addressline2"/></div>
			<html:submit/>
		</html:form>
		<html:errors property="register"/>
	</body>
</html>

