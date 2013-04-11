<%@ page language="java" import="po.Address" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>manageAddress</title>
    <jsp:include page="/script.jsp" />
  </head>
  
  <body>
<div id="northpanel" data-role="header">
		<h1>Order Details</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
</div>
		<div id="centerpanel" data-role="content">
<table>
<tr><td>BOOK INFORMATION</td></tr>
<tr>
  <td>isbn:</td>
  <td><bean:write name="bdetail" property="isbn"/></td>
  </tr>
  <tr>
  <td>book title:</td>
  <td><bean:write name="bdetail" property="booktitle"/></td>
  </tr>
  <tr>
  <td>author:</td>
  <td><bean:write name="bdetail" property="author"/></td>
  </tr>
  <tr></tr>
  <tr></tr>
  
  <tr><td>SHIPPING INFORMATION</td></tr>
  <tr>
  <td>first name:</td>
  <td><bean:write name="ship" property="firstname"/></td>
  </tr>
  <tr>
  <td>last name: </td>
  <td><bean:write name="ship" property="lastname"/></td>
  </tr>
  <tr>
  <td>phone number:</td>
  <td><bean:write name="ship" property="phonenumber"/></td>
  </tr>
  <tr>
  <td>company: </td>
  <td><bean:write name="ship" property="company"/></td>
  </tr>
  <tr>
  <td>city: </td>
  <td><bean:write name="ship" property="city"/></td>
  </tr>
  <tr>
  <td>state: </td>
  <td><bean:write name="ship" property="state"/></td>
  </tr>
  <tr>
  <td>zipcode:</td>
  <td> <bean:write name="ship" property="zipcode"/></td>
  </tr>
  <tr>
  <td>address line1: </td>
  <td><bean:write name="ship" property="addressline1"/></td>
  </tr>
  <tr>
  <td>address line2: </td>
  <td><bean:write name="ship" property="addressline2"/></td>
  </tr>
  </table>
  </div>
  </body>
  </html>