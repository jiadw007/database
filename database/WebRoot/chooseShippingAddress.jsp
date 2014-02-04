<%@ page language="java" import="java.util.*" import="po.Address" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>choose Shipping Address</title>
	<jsp:include page="/script.jsp" />
  </head>
  
  <body>
  <div id="northpanel" data-role="header">
  <h1>Checkout - Address</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
  	<div id="centerpanel" data-role="content">
    <logic:equal name="choose" value="1">
    <logic:iterate id="addr" name="addresslist">
    <%Address a=(Address)addr; %>
    
    <div>
   
    <table>
  <tr>
  <td>first name:</td>
  <td><bean:write name="addr" property="firstname"/></td>
  </tr>
  <tr>
  <td>last name: </td>
  <td><bean:write name="addr" property="lastname"/></td>
  </tr>
  <tr>
  <td>phone number:</td>
  <td><bean:write name="addr" property="phonenumber"/></td>
  </tr>
  <tr>
  <td>company: </td>
  <td><bean:write name="addr" property="company"/></td>
  </tr>
  <tr>
  <td>city: </td>
  <td><bean:write name="addr" property="city"/></td>
  </tr>
  <tr>
  <td>state: </td>
  <td><bean:write name="addr" property="state"/></td>
  </tr>
  <tr>
  <td>zipcode:</td>
  <td> <bean:write name="addr" property="zipcode"/></td>
  </tr>
  <tr>
  <td>address line1: </td>
  <td><bean:write name="addr" property="addressline1"/></td>
  </tr>
  <tr>
  <td>address line2: </td>
  <td><bean:write name="addr" property="addressline2"/></td>
  </tr>
  </table>

    <a href="choosePayment.do?aid=<%=String.valueOf(a.getId())%>" data-role="button" data-theme="e">Use This Address</a>
    </div>
    </logic:iterate>
    </logic:equal>
    <logic:equal name="choose" value="0">
    No address, please add a new address<html:link page="/addNewAddress.jsp">Add New Credit</html:link>
   </logic:equal>
   </div>
  </body>
</html>
