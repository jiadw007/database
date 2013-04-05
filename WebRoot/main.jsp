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
  Search Book<br />
  <html:link page="/searchBook.jsp">Search Book</html:link><br />
  Account Settings <br />
  <html:link page="/updateUser.jsp">Change Account Settings</html:link><br />
  <html:link action="manageAddress.do">Manage Address Book</html:link><br />
  <html:link page="/addNewAddress.jsp">Add New Address</html:link> <br />
  Order History<br />
  <html:link action="checkOrder.do">View Open Orders</html:link><br /> 
  <html:link href="">Your Message with sellers</html:link><br />
  Payment Method<br />
  <html:link action="manageCredit.do">Manage Payment Options</html:link><br />
  <html:link page="/addNewCredit.jsp">Add a Credit or Debit Card</html:link><br />
  <logic:equal name="failed" value="1">
  Your Order has been placed!
  </logic:equal>
  </body>
</html>
