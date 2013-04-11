<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<jsp:directive.page import="po.Book"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>All book information</title>
   	<jsp:include page="/script.jsp" />
 	<script language="JavaScript">
 		$(document).bind('pageinit', function() {
 			$(".btn").buttonMarkup();
 		});
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
  </head>
  
  <body>
    <div id="northpanel" data-role="header">
    	<h1>All Book Information</h1>
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
	</div>
	<div id="centerpanel" data-role="content">
     <table align="center" width="1000" bgColor="#FFFFFF" id="table1" data-role="tableview" data-mode="columntoggle">
     <tr>
     <th align="center" valign="middle" width="100">BOOKSKU</th>
     <th align="center" valign="middle" width="100">ISBN</th>
     <th align="center" valign="middle" width="100">QUANTITY</th>
     <th align="center" valign="middle" width="100">UNITPRICE</th>
     <th align="center" valign="middle" width="100">BOOKTITLE</th>
     <th align="center" valign="middle" width="100">AUTHOR</th>
     </tr>
     <logic:iterate id="book" name="pc" property="smallList">
     <tr>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="booksku"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="isbn"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="stockquantity"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="unitprice"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="booktitle"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="book" property="author"/></td>
     </tr>
     </logic:iterate>
     </table>
          <div align="center" class='ui-grid-c'>
     	<div class='ui-block-a'>
      <html:link action="queryBook.do?PageIndex=1" styleClass='btn'>first</html:link>
      </div>
      <div class='ui-block-b'>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex" styleClass='btn'>previous</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-c'>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex" styleClass='btn'>next</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-d'>
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount" styleClass='btn'>end</html:link>
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
