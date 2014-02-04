<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE HTML>
<html> 
	<head>
		<title>JSP for InsertBookForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel" data-role="header">
		<h1>Enter New Book Information</h1>
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
		<html:form action="/insertBook">
			ISBN : <html:text property="ISBN"/><html:errors property="ISBN"/><br/>
			BookTitle : <html:text property="bookTitle"/><html:errors property="bookTitle"/><br/>
			Author : <html:text property="author"/><html:errors property="author"/><br/>
			Publish Time:<html:text property="publishTime"/><html:errors property="publishTime"/><br/>
			Stock Quantity : <html:text property="stockquantity"/><html:errors property="stockquantity"/><br/>
			Unit Price : <html:text property="unitprice"/><html:errors property="unitprice"/><br/>
			Image Url: <html:text property="image"/><html:errors property="image"/><br/>
			Description : <html:text property="description"/><html:errors property="description"/><br/>
			<html:submit/><html:reset/>
		</html:form>
		<html:errors property="book"/>
		</div>
	</body>
</html>

