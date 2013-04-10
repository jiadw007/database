<%@ page language="java" import ="java.util.*" import="po.Book" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for QueryOneBookForm form</title>
		<jsp:include page="/script.jsp"/>
	</head>
	<body>
	    <div id="northpanel">
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
		<html:form action="/queryOneBook">
			BookSKU : <html:text property="booksku"/><html:errors property="booksku"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
		<logic:present name="requiredBook">
		<%Book book=(Book)request.getSession().getAttribute("requiredBook"); %>
		<html:form action="/updateBook">
		<table>
		<tr>
		<td>BookSKU :</td>
		<td><bean:write name="requiredBook" property="booksku"/></td>
		</tr>
		<tr>
		<td>ISBN :</td>
		<td><bean:write name="requiredBook" property="isbn"/></td>
		</tr>
		<tr>
		<td>Stock Quantity :</td>
		<td><html:text property="stockquantity" value="<%=String.valueOf(book.getStockquantity())%>"></html:text></td>
		<td><html:errors property="stockquantity"/>
		</tr>
		<tr>
		<td>UnitPrice :</td>
		<td><html:text property="unitprice" value="<%=String.valueOf(book.getUnitprice())%>"></html:text></td>
		<html:errors property="unitprice"/>
		</tr>
		</table>
		<html:submit value="Update"/><html:cancel value="Cancel"/>
		</html:form>
		</logic:present>
		<logic:equal name="exist" value="0">
		The book does not exist
		</logic:equal>
		<logic:present name="update">
		<logic:equal name="update" value="1">
		The update operation succeed
		</logic:equal>
		</logic:present>
		</div>
	</body>
</html>

