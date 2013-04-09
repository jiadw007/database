<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>main page</title>
    
    <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
  </head>
  <body> 
  Top List<br />
  <html:link action="selectTopBook.do">Top 10 Books</html:link><br />
  <html:link action="selectTopBuyer.do">Top 10 Customers</html:link><br />
  <html:link action="selectTopSale.do">Toe 10 Sales</html:link><br />
  <html:link action="selectTopSupplier.do">Top 10 Suppliers</html:link> <br />
  <html:link page="/advanceSelect.jsp">Advance Top List</html:link><br />
  <html:link action="timeSeries.do">Time Series</html:link>
  <br />
  Order<br />
  <html:link action="queryOrder.do">Check All Orders</html:link><br /> 
  <html:link page="/queryOneOrder.jsp">Update Order Status</html:link><br />
  <br />
  User<br />
  <html:link action="queryUser.do">Check All Users</html:link><br />
  <br />
  Book Status<br />
  <html:link action="queryBook.do">Check All Books</html:link><br />
  <html:link page="/queryOneBook.jsp">Update Book Information</html:link><br />
  <html:link page="/insertBook.jsp">Add New Book</html:link><br />
  </body>
</html>
