<%@ page language="java" import="java.util.*" import="po.Book"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Bookstore Showcase</title>
<jsp:include page="/script.jsp" />
</head>

<body>
	<div data-role="page">
	<div id="northpanel" data-role="header">
		<h1>Welcome to online bookstore</h1>
		<jsp:include page="/main.jsp" flush="true" />
	</div>
	<div id="centerpanel" data-role="content">
	  <div style="margin: 10px">
	  	<a href="register.jsp" data-role="button" data-icon="forward" data-theme="e">New Customer</a>
	  	<br>
	  </div>
	  <div>
	  <logic:equal name="failed" value="0">
	  Your Order has been placed!
	  </logic:equal>
	  <%int i=1; %>
	  <ul data-role="listview">
	  <logic:iterate id="book" name="topbook">
	  <%Book b=(Book)book;%>
	  <li>
	  <html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn">
	  <img src="<%=b.getFile() %>" />
	  <%//out.println(i);
	  	i++;
	   %>
	  <!--<li>ISBN:<bean:write name="book" property="isbn"/></li>
	  -->
	  <h3><bean:write name="book" property="booktitle"/></h3>
	  <p>Author:<bean:write name="book" property="author"/></p>
	  </html:link>
	  </li>	  
	  </logic:iterate>
	  </ul>
	  </div>
	</div>
  </div>
</body>
</html>
