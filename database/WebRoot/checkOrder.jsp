<%@ page language="java" import="java.util.*" import="po.Order" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>ALL ORDER INFORMATION</title>
    <jsp:include page="/script.jsp" />
   	<script language="JavaScript">
  	    $(document).bind('pageinit', function() {
    		$(".mybtn1").buttonMarkup({
    			"inline": "true"
    		});
    	});
    </script>
  </head>
  
  <body>
  <div id="northpanel" data-role="header">
  		<h1>Order History</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
	<div id="centerpanel" data-role="content">
     <table align="center" width="1000" bgColor="#FFFFFF" data-role="table" data-mode="columntoggle">
     <tr>
     <th align="center" valign="middle" width="100">TRANSACTIONID</th>
     <th align="center" valign="middle" width="100">PLACEONDATE</th>
     <th align="center" valign="middle" width="100">BOOKSKU</th>
     <th align="center" valign="middle" width="100">QUANTITY</th>
     <th align="center" valign="middle" width="100">AMOUNT</th>
     <th align="center" valign="middle" width="100">STATUS</th>
     </tr>
     <logic:iterate id="order" name="pc" property="smallList">
     <tr>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="transactionId"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="placeOnDate"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="sku"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="quantity"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="amount"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="status"/> </td>
     <td align="center" valign="middle" width="100"><html:link action="/checkDetails.do" paramId="id" paramName="order" paramProperty="id">order details</html:link></td>
     </tr>
     </logic:iterate>
     </table>
     <div align="center" class='ui-grid-c'>
     	<div class='ui-block-a'>
      <html:link action="checkOrder.do?PageIndex=1" styleClass="mybtn1">first</html:link>
     </div>
     <div class='ui-block-b'>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="checkOrder.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex" styleClass="mybtn1">previous</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-c'>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="checkOrder.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex" styleClass="mybtn1">next</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-d'>
     <html:link action="checkOrder.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount" styleClass="mybtn1">last</html:link>
     </div>
     <font style="color: rgb(255, 0, 0);" size="5">
		<logic:equal name="success" value="1">
		delete operation successful
		</logic:equal>
	 </font>
     </div>

	 </div>
  </body>
   

</html>
