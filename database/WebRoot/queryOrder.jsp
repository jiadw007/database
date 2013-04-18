<%@ page language="java" import="java.util.*" import="po.Order" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>ALL ORDER INFORMATION</title>
   <jsp:include page="/script.jsp"/>
   <script>
   	 	$(document).bind('pageinit', function() {
 			$(".btn").buttonMarkup();
 		});
   </script>
  </head>
  
  <body>
  <div id="northpanel" data-role="header">
  		<h1>View All Orders</h1>
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel" data-role="content">
    <div align="center">ALL ORDER INFORMATION</div>
     <table align="center" width="1000" bgColor="#FFFFFF">
     <tr>
     <td align="center" valign="middle" width="100">ID</td>
     <td align="center" valign="middle" width="100">BOOKSKU</td>
     <td align="center" valign="middle" width="100">STATUS</td>
     <td align="center" valign="middle" width="100">PLACEONDATE</td>
     <td align="center" valign="middle" width="100">TRANSACTIONID</td>
     <td align="center" valign="middle" width="100">QUANTITY</td>
     <td align="center" valign="middle" width="100">AMOUNT</td>
     <td align="center" valign="middle" width="100">SHIPPINGADDR</td>
     <td align="center" valign="middle" width="100">CUSTOMER</td>
     <td align="center" valign="middle" width="100">EMPLOYEE</td>
     </tr>
     <logic:iterate id="order" name="pc" property="smallList">
     <tr>
     <td align="center" valign="middle" width="100"><a href="queryOneOrder.do?id=<bean:write name="order" property="id"/>" data-role="button" data-mini="true" data-inline="true"><bean:write name="order" property="id"/></a></td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="sku"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="status"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="placeOnDate"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="transactionId"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="quantity"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="amount"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="shippingAddress"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="customerId"/> </td>
     <td align="center" valign="middle" width="100"><bean:write name="order" property="employeeId"/> </td>
     </tr>
     </logic:iterate>
     </table>
          <div align="center" class='ui-grid-c'>
     	<div class='ui-block-a'>
      <html:link action="queryOrder.do?PageIndex=1" styleClass='btn'>first</html:link>
      </div>
      <div class='ui-block-b'>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="queryOrder.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex" styleClass='btn'>previous</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-c'>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="queryOrder.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex" styleClass='btn'>next</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-d'>
     <html:link action="queryOrder.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount" styleClass='btn'>end</html:link>
     </div>
     <font style="color: rgb(255, 0, 0);" size="5">
		<logic:equal name="success" value="1">
		delete operation successful
		</logic:equal>
		</font>
     </div>
	 </div>
  </body>
   <script language="JavaScript">
       function del()
       {
        if(confirm("confirm?")){
        alert("operate delete");
        return true;
        }else{
        return false;
        }
        }
     </script>
  <body></body>
</html>
