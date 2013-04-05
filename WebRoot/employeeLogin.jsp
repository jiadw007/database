<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for employeeLoginForm form</title>
		<script src="js/jquery-1.9.1.js" language="JavaScript"></script>
	</head>
	<body>
		<html:form action="/employeeLogin"> 
	    loginname:<html:text property="loginname"></html:text><br />
		password:<html:password property="password"></html:password><br/>
			<html:submit/><html:cancel/>
		</html:form>
		<br /><br />
		<html:errors property="employeelogin"/>
	</body>
</html>

