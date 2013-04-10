<%@ page language="java" import="java.util.*" import="po.Book"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>book Information</title>
    <jsp:include page="/script.jsp" />
  </head>
  
  <body>
  <div id="northpanel">
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
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
		<td>Book TITLE:</td>
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
		<logic:iterate id="review" name="reviews">
		<tr>
		<td>Review Title</td>
		<td><bean:write name="review" property="title"/></td>
		</tr>
		<tr>
		<td>Username</td>
		<td><bean:write name="review" property="username"/></td>
		</tr>
		<tr>
		<td>rating</td>
		<td><bean:write name="review" property="rating"/></td>
		</tr>
		<tr>
		<td>Review Date</td>
		<td><bean:write name="review" property="reviewondate"/></td>
		</tr>
		<tr>
		<td>Body</td>
		<td><bean:write name="review" property="body"/></td>
		</tr>
		</logic:iterate>
		</table>
		<html:link page="/addToShoppingCart.jsp">Add to Cart</html:link>
		</logic:equal>
		</div>
  </body>
</html>
