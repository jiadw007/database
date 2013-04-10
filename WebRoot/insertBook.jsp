<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for InsertBookForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel">
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
		<html:form action="/insertBook">
			ISBN : <html:text property="ISBN"/><html:errors property="ISBN"/><br/>
			bookTitle : <html:text property="bookTitle"/><html:errors property="bookTitle"/><br/>
			author : <html:text property="author"/><html:errors property="author"/><br/>
			publishTime:<html:text property="publishTime"/><html:errors property="publishTime"/><br/>
			stockquantity : <html:text property="stockquantity"/><html:errors property="stockquantity"/><br/>
			unitprice : <html:text property="unitprice"/><html:errors property="unitprice"/><br/>
			image : <html:text property="image"/><html:errors property="image"/><br/>
			description : <html:text property="description"/><html:errors property="description"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
		<html:errors property="book"/>
		</div>
	</body>
</html>

