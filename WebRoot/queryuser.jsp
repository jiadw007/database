<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 <jsp:directive.page import="po.User"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>All user information</title>
	<jsp:include page="/script.jsp" />
	<script>
		$(function(){
			$("a").buttonMarkup();
			$(".delete").buttonMarkup({"icon": "minus"});
		});
	</script>
  </head>
  
  <body>
  <div id="northpanel" data-role="header">
  <h1>ALL USER INFORMATION</h1>
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
    <div align="center" data-role="content"></div>
    <br><br>
     <table align="center" width="1000" bgColor="#FFFFFF">
     <tr>
     <th align="center" valign="middle" width="100">ID</th>
     <th align="center" valign="middle" width="200">Create Time</th>
     <th align="center" valign="middle" width="100">Username</th>
     <th align="center" valign="middle" width="100">Email</th>
     <th align="center" valign="middle" width="100">Password</th>
     <th align="center" valign="middle" width="100">Password Salt</th>
     <th align="center" valign="middle" width="100">Default Billing Address</th>
     <th align="center" valign="middle" width="100">Default Shipping Address</th>
     </tr>
     <logic:iterate id="user" name="pc" property="smallList">
     <tr>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="ID"/> </td>
     <td align="center" valign="middle" width="200"><bean:write name="user" property="createTime"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="username"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="email"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="password"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="passwordSalt"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="defaultbillingAddress"/></td>
     <td align="center" valign="middle" width="100"><bean:write name="user" property="defaultShippingAddress"/></td>
     <td align="center" valign="middle" width="80"><html:link styleClass="delete" action="/deleteUser.do" paramId="USER" paramName="user" paramProperty="username" onclick="return del()">delete</html:link></td>
     </tr>
     </logic:iterate>
     </table>
          <div align="center" class='ui-grid-c'>
     	<div class='ui-block-a'>
      <html:link action="queryUser.do?PageIndex=1" styleClass='btn'>first</html:link>
      </div>
      <div class='ui-block-b'>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="queryUser.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex" styleClass='btn'>previous</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-c'>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="queryUser.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex" styleClass='btn'>next</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-d'>
     <html:link action="queryUser.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount" styleClass='btn'>end</html:link>
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
  </body>
</html>
