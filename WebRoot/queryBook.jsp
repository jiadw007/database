<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<jsp:directive.page import="po.Book"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>All book information</title>
   <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
  </head>
  
  <body>
    <div align="center"><font face="微软雅黑" size="5">ALL BOOK INFORMATION</font></div>
    <br><br>
     <table align="center" width="1000" bgColor="#FFFFFF">
     <tr>
     <td align="center" valign="middle" width="100">BOOKSKU</td>
     <td align="center" valign="middle" width="100">ISBN</td>
     <td align="center" valign="middle" width="100">QUANTITY</td>
     <td align="center" valign="middle" width="100">UNITPRICE</td>
     <td align="center" valign="middle" width="100">BOOKTITLE</td>
     <td align="center" valign="middle" width="100">AUTHOR</td>
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
     <div align="center">
      <html:link action="queryBook.do?PageIndex=1">start</html:link>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex">previous</html:link>
     </logic:equal>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex">next</html:link>
     </logic:equal>
     <html:link action="queryBook.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount">end</html:link>
     <br><br><br>
     <font style="color: rgb(255, 0, 0);" size="5">
		<logic:equal name="success" value="1">
		delete operation successful
		</logic:equal>
		</font>
     </div>
  </body>
   <script language="JavaScript">
       function del()
       {
        if(confirm("confirm?")){
        alert("operate delete")
        return true
        }else{
        return false
        }
        }
     </script>
</html>
