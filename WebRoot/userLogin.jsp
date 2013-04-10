<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 <%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 
<html> 
	<head>
		<title>JSP for UserLoginForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
		<html:form action="/userLogin"> 
		username:<html:text property="username"></html:text><br />
		password:<html:password property="password"></html:password><br/>
			<html:submit/><html:cancel/>
		</html:form>
		<br /><br />
		<html:errors property="login"/>
	</body>
</html>

