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
	<div data-role="page">
	<div id="northpanel" data-role="header">
		<h1>Search Book</h1>
		<jsp:include page="/main.jsp" flush="true" />
	</div>
	<div id="centerpanel" data-role="content">
	<div>
		<html:form action="/searchBook" method="">
		<div class="ui-grid-a">
				<div class="ui-block-a">	
				    <html:select property="attribute">
				    <html:option value="isbn">ISBN</html:option>
				    <html:option value="author">Author</html:option>
				    <html:option value="booktitle">Title</html:option>
				    </html:select>
				</div>
				<div class="ui-block-b">
			    	<html:text property="value"></html:text>
			    </div>		
		</div>
	    <html:submit value="Search"/>
	    <a href="/advancedSearch.jsp" data-role="button" data-theme="e" data-icon="forward">Advanced search</a>
		</html:form><br>
		<logic:present name="search">
		<logic:equal name="search" value="1">
		<ul data-role="listview">
		<logic:iterate id="book" name="searchBook">
		<li>
			<html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn">
			<h3><bean:write name="book" property="booktitle"/></h3>
			<p class="ui-li-aside"><bean:write name="book" property="isbn"/><p>
			<p>Author<bean:write name="book" property="author"/></p>
			<p>Publish Time<bean:write name="book" property="publishtime"/></p>
			</html:link>
		</li>
		</logic:iterate>
		</ul>
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
		</div>
	</body>
</html>

