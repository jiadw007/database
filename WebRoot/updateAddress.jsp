<%@ page language="java" import="java.util.*" import="po.Address"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>JSP for UpdateAddressForm form</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body> 
	<div data-role="page">
	<div id="northpanel">
		<div data-role='header'>
			<h1>Change Address</h1>
			<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
	</div>
		<div id="centerpanel" data-role="content">
	    <%Address address=(Address)request.getSession().getAttribute("editAddress"); %>
		<html:form action="/updateAddress">
		   <table>
  <tr>
  <td>First name:</td>
  <td><html:text property="firstname" value="<%=address.getFirstname() %>"/></td>
  <td><html:errors property="firstname"/></td>
  </tr>
  <tr>
  <td>Last name: </td>
  <td><html:text property="lastname" value="<%=address.getLastname() %>"/></td>
  <td><html:errors property="lastname"/></td>
  </tr>
  <tr>
  <td>Phone number:</td>
  <td><html:text property="phonenumber" value="<%=address.getPhonenumber() %>"/></td>
  <td><html:errors property="phonenumber"/></td>
  </tr>
  <tr>
  <td>Company: </td>
  <td><html:text property="company" value="<%=address.getCompany() %>"/></td>
  <td><html:errors property="company"/></td>
  </tr>
  <tr>
  <td>City: </td>
  <td><html:text property="city" value="<%=address.getCity() %>"/></td>
  <td><html:errors property="city"/></td>
  </tr>
  <tr>
  <td>State: </td>
  <td><html:text property="state" value="<%=address.getState() %>"/></td>
  <td><html:errors property="state"/></td>
  </tr>
  <tr>
  <td>Zipcode:</td>
  <td><html:text property="zipcode" value="<%=String.valueOf(address.getZipcode()) %>"/></td>
  <td><html:errors property="zipcode"/></td>
  </tr>
  <tr>
  <td>Address Line 1: </td>
  <td><html:text property="addr1" value="<%=address.getAddressline1() %>"/></td>
  <td><html:errors property="addr1"/></td>
  </tr>
  <tr>
  <td>Address Line 2: </td>
  <td><html:text property="addr2" value="<%=address.getAddressline2() %>"/></td>
  <td><html:errors property="addr2"/></td>
  </tr>
  </table>
  <html:submit/>
  </html:form>
  
  <logic:equal name="update" value="1">
  Update address success
  </logic:equal>
  <logic:equal name="update" value="0">
  Update address failed
  </logic:equal>
  </div>
  </div>
	</body>
</html>

