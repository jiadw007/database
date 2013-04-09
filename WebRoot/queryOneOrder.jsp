<%@ page language="java" import ="java.util.*" import="po.Order" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for QueryOneBookForm form</title>
		<script src="js/jquery-1.9.1.js" language="JavaScript"></script>
	</head>
	<body>
		<html:form action="/queryOneOrder">
			Order ID: <html:text property="id"/><html:errors property="id"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
		<logic:present name="uorder">
		<%Order order=(Order)request.getSession().getAttribute("uorder"); %>
		<html:form action="/updateOrder">
		<table>
		<tr>
		<td>Order ID :</td>
		<td><bean:write name="uorder" property="id"/></td>
		</tr>
		<tr>
		<td>Customer :</td>
		<td><bean:write name="uorder" property="customerId"/></td>
		</tr>
		<tr>
		<td>Employee :</td>
		<td><html:text property="eid" value="<%=String.valueOf(order.getEmployeeId())%>"></html:text></td>
		<td><html:errors property="eid"/>
		</tr>
		<tr>
		<td>TransactionId :</td>
		<td><bean:write name="uorder" property="transactionId"/></td>
		</tr>
		<tr>
		<td>Date :</td>
		<td><bean:write name="uorder" property="placeOnDate"/></td>
		</tr>
		<tr>
		<td>BookTitle :</td>
		<td><bean:write name="ubook" property="booktitle"/></td>
		</tr>
		<tr>
		<td>Quantity :</td>
		<td><bean:write name="uorder" property="quantity"/></td>
		</tr>
		<tr>
		<td>Amount :</td>
		<td><bean:write name="uorder" property="amount"/></td>
		</tr>
		<tr><td>Shipping Address</td></tr>
		<tr>
		<td>first name:</td>
  <td><bean:write name="uaddr" property="firstname"/></td>
  </tr>
  <tr>
  <td>last name: </td>
  <td><bean:write name="uaddr" property="lastname"/></td>
  </tr>
  <tr>
  <td>phone number:</td>
  <td><bean:write name="uaddr" property="phonenumber"/></td>
  </tr>
  <tr>
  <td>company: </td>
  <td><bean:write name="uaddr" property="company"/></td>
  </tr>
  <tr>
  <td>city: </td>
  <td><bean:write name="uaddr" property="city"/></td>
  </tr>
  <tr>
  <td>state: </td>
  <td><bean:write name="uaddr" property="state"/></td>
  </tr>
  <tr>
  <td>zipcode:</td>
  <td> <bean:write name="uaddr" property="zipcode"/></td>
  </tr>
  <tr>
  <td>address line1: </td>
  <td><bean:write name="uaddr" property="addressline1"/></td>
  </tr>
  <tr>
  <td>address line2: </td>
  <td><bean:write name="uaddr" property="addressline2"/></td>
  </tr>
		<tr>
		<td>Status :</td>
		<td><html:text property="status" value="<%=order.getStatus()%>"></html:text></td>
		<td><html:errors property="status"/>
		</tr>
		</table>
		<html:submit value="Update"/><html:cancel value="Cancel"/>
		</html:form>
		</logic:present>
		<logic:equal name="exist" value="0">
		The Order does not exist
		</logic:equal>
		<logic:present name="update">
		<logic:equal name="update" value="1">
		The update operation succeed
		</logic:equal>
		</logic:present>
		
	</body>
</html>

