<%@ page language="java" import="java.util.*" import="po.Book"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	  <logic:equal name="failed" value="0">
	  Your Order has been placed!
	  </logic:equal>
	  <%int i=1; %>
	  <logic:iterate id="book" name="topbook">
	  <%Book b=(Book)book;
	    %>
	  <ul data-role="listview" >
	  <li><%out.println(i++); %></li>
	  <li>ISBN:<html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn"><bean:write name="book" property="isbn"/></html:link></li>
	  <li>Book Title:<bean:write name="book" property="isbn"/></li>
	  <li>Author:<bean:write name="book" property="author"/></li>
	  <li>Image:<img src="<%=b.getFile() %>" /></li>
	  </ul>
	  </logic:iterate>
	</div>
  </div>
</body>
</html>
