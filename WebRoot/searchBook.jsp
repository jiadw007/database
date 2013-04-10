<%@ page language="java" import="po.Book" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>Search Book</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel">
		<jsp:include page="/main.jsp" flush="true" />
		</div>
		<div id="centerpanel">
	<div>
		<html:form action="/searchBook">
	    <html:select property="attribute">
	    <html:option value="isbn">ISBN</html:option>
	    <html:option value="author">AUTHOR</html:option>
	    <html:option value="booktitle">TITLE</html:option>
	    </html:select>
	    <html:text property="value"></html:text>		
	    <html:submit value="Search"/>
	    <html:link page="/advancedSearch.jsp">Advanced search</html:link>
		</html:form><br>
		<logic:present name="search">
		<logic:equal name="search" value="1">
		<logic:iterate id="book" name="searchBook">
		<table>
		<tr>
		<td>ISBN:</td>
		<td><html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn"><bean:write name="book" property="isbn"/></html:link></td>
		</tr>
	    <tr>
		<td>TITLE:</td>
		<td><bean:write name="book" property="booktitle"/></td>
		</tr>
		<tr>
		<td>AUTHOR:</td>
		<td><bean:write name="book" property="author"/></td>
		</tr>
		<tr>
		<td>PUBLISHTIME</td>
		<td><bean:write name="book" property="publishtime"/></td>
		</tr>
		</table>
		</logic:iterate>
		</logic:equal>
		<logic:equal name="search" value="0">
		The book does not exist, or check the attribute and value
		</logic:equal>
		</logic:present>
		<logic:notEmpty name="shoppingcart">
		<html:link page="/queryShoppingCart.jsp">Shopping Cart</html:link>
		<html:link page="/queryShoppingCart.jsp">CHECK OUT</html:link>
		</logic:notEmpty>
		</div>
		</div>
	</body>
</html>

