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
    <script>
    	$(function(){
    		$('.delete').button();
    	});
    </script>
  </head>
  <body>
  <div id="northpanel" data-role="header">
  		<h1>Manager Your Shipping and Billing Address</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel" data-role="content">
  <logic:iterate id="addr" name="addresslist">
  <%Address a =(Address)addr; %>
  <html:form action="/checkAddress" method="GET">
  <html:hidden property="id" value="<%=String.valueOf(a.getId()) %>"/>
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
  <div class="ui-grid-a">
  <div class="ui-block-a">
  <html:submit value="Edit" />
  </div>
  <div class="ui-block-b">
  <html:link action="/deleteAddress.do" paramId="id" paramName="addr" paramProperty="id" styleClass="delete">Delete</html:link>
  </div>
  </div>
  </html:form>
  </logic:iterate>
  <br />
  <a href="/addNewAddress.jsp" data-role="button" data-icon="plus" data-theme="b">Add New Address</a><br />
  <logic:equal name="noAddress"value="1">
  delete address success
  </logic:equal>
  <logic:equal name="noAddress"value="0">
  delete address failed
  </logic:equal>
  <logic:equal name="default" value="1">
  you can't delete default address
  </logic:equal>
  </div>
  </body>
</html>
