<%@ page language="java" import="java.util.*" import="po.Book"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>book Information</title>
    <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
  </head>
  
  <body>
    <logic:equal name="search" value="1">
    <%Book b=(Book)request.getSession().getAttribute("searchBook"); 
      System.out.println(b);
      String img=b.getFile();
      %>
		<table>
		<tr>
		<td>ISBN:</td>
		<td><bean:write name="searchBook" property="isbn"/></td>
		</tr>
	    <tr>
		<td>TITLE:</td>
		<td><bean:write name="searchBook" property="booktitle"/></td>
		</tr>
		<tr>
		<td>AUTHOR:</td>
		<td><bean:write name="searchBook" property="author"/></td>
		</tr>
		<tr>
		<td>PRICE:</td>
		<td><bean:write name="searchBook" property="unitprice"/></td>
		</tr>
		<tr>
		<td>STOCK QUANTITY:</td>
		<td><bean:write name="searchBook" property="stockquantity"/></td>
		</tr>
		<tr>
		<td>DESCRIPTION:</td>
		<td><bean:write name="searchBook" property="description"/></td>
		</tr>
		<tr>
		<td>PUBLISHTIME</td>
		<td><bean:write name="searchBook" property="publishtime"/></td>
		</tr>
		<tr>
		<td>IMAGE</td>
		<td><img src="<%=b.getFile()%>"></td>
		</tr>
		</table>
		<html:link page="/addToShoppingCart.jsp">Add to Cart</html:link>
		</logic:equal>
  </body>
</html>
