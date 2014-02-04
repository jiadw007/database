<%@ page language="java" import="java.util.*" import="po.User"pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    
    <title>updateUser</title>
    <jsp:include page="/script.jsp" />
  </head>
  
  <body>
    <%User user=(User)request.getSession().getAttribute("user"); %>
	<div id="northpanel" data-role="header">
		<h1>Update your account info</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
	</div>
	<div id="centerpanel" data-role="content">
    <html:form action="/updateUser">
     Username: <bean:write name="user" property="username"/><br />
     Password: <html:password property="password" value="<%=user.getPassword() %>"></html:password><html:errors property="password" /><br />
     Passwordsalt: <html:text property="passwordSalt" value="<%=user.getPasswordSalt() %>"><html:errors property="passwordSalt" /></html:text><br />
     Email:<html:text property="email" value="<%=user.getEmail() %>"></html:text><html:errors property="email" /><br />
     <html:submit value="Update"/>
    </html:form>
    
    <logic:equal name="update" value="1">
    Update Success
    </logic:equal>
    <logic:equal name="update" value="0">
    Update failed
    </logic:equal>
	</div>
  </body>
</html:html>
