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
		<html:form action="/userRegister">
		    username : <html:text property="username"/><html:errors property="username"/><br/>
			lastname : <html:text property="lastname"/><html:errors property="lastname"/><br/>
			firstname : <html:text property="firstname"/><html:errors property="firstname"/><br/>
			password : <html:password property="password"/><html:errors property="password"/><br/>
			passwordsalt : <html:text property="passwordsalt"/><html:errors property="passwordsalt"/><br/>
			email : <html:text property="email"/><html:errors property="email"/><br/>			
			phone : <html:text property="phone"/><html:errors property="phone"/><br/>
			state: <html:text property="state"/><html:errors property="state"/><br/>
			city: <html:text property="city"/><html:errors property="city"/><br/>
			zipcode: <html:text property="zipcode" value=""/><html:errors property="zipcode"/><br/>
			company: <html:text property="company"/><html:errors property="company"/><br/>
			addressline1 : <html:text property="addressline1"/><html:errors property="addressline1"/><br/>
			addressline2 : <html:text property="addressline2"/><html:errors property="addressline2"/><br/>
			<html:submit/>
		</html:form>
		<html:errors property="register"/>	
	</body>
</html>

