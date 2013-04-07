<%@ page language="java" import="po.Credit" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>manageCredit</title>
    <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
  </head>
  
  <body>
  
  <logic:iterate id="credit" name="creditlist">
  <%Credit c=(Credit)credit; %>
  <html:form action="/checkCredit">
  <html:hidden property="cardnumber" value="<%=String.valueOf(c.getCardNumber()) %>"/>
  <table>
  <tr>
  <td>card number:</td>
  <td><bean:write name="credit" property="cardNumber"/></td>
  </tr>
  <tr>
  <tr>
  <td>name on card:</td>
  <td><bean:write name="credit" property="nameOnCard"/></td>
  </tr>
  <tr>
  <tr>
  <td>experion date:</td>
  <td><bean:write name="credit" property="experionDate"/></td>
  </tr>
  <tr>
  <tr>
  <td>card type:</td>
  <td><bean:write name="credit" property="cardType"/></td>
  </tr>
  <tr>
  <td>first name:</td>
  <td><bean:write name="credit" property="firstname"/></td>
  </tr>
  <tr>
  <td>last name: </td>
  <td><bean:write name="credit" property="lastname"/></td>
  </tr>
  <tr>
  <td>phone number:</td>
  <td><bean:write name="credit" property="phonenumber"/></td>
  </tr>
  <tr>
  <td>company: </td>
  <td><bean:write name="credit" property="company"/></td>
  </tr>
  <tr>
  <td>city: </td>
  <td><bean:write name="credit" property="city"/></td>
  </tr>
  <tr>
  <td>state: </td>
  <td><bean:write name="credit" property="state"/></td>
  </tr>
  <tr>
  <td>zipcode:</td>
  <td> <bean:write name="credit" property="zipcode"/></td>
  </tr>
  <tr>
  <td>address line1: </td>
  <td><bean:write name="credit" property="addressline1"/></td>
  </tr>
  <tr>
  <td>address line2: </td>
  <td><bean:write name="credit" property="addressline2"/></td>
  </tr>
  </table>
  <html:submit value="Edit" /><html:link action="/deleteCredit.do" paramId="cid" paramName="credit" paramProperty="cardNumber">Delete</html:link>
  </html:form>
  </logic:iterate>
  <br />
  <html:link page="/addNewCredit.jsp">Add New CreditCard</html:link><br />
  <logic:equal name="noCredit"value="1">
  delete credit card success
  </logic:equal>
  <logic:equal name="noCredit"value="0">
  delete credit card failed
  </logic:equal>
  </body>
</html>