<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML>
<html> 
	<head>
		<title>Add New Address</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div data-role="page">
	<div id="northpanel">
		<div data-role='header'>
			<h1>Add New Address</h1>
			<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
	</div>
		<div id="centerpanel" data-role="content">
		<html:form action="/addNewAddress">
			<div data-role="fieldcontain"><label for="firstname">First Name:</label><html:text property="firstname" styleId="firstname"/><html:errors property="firstname"/></div>
			<div data-role="fieldcontain"><label for="lastname">Last Name :</label> <html:text property="lastname" styleId="lastname"/><html:errors property="lastname"/></div>
			<div data-role="fieldcontain"><label for="company">Company :</label> <html:text property="company" styleId="company"/><html:errors property="company"/></div>
			<div data-role="fieldcontain"><label for="phonenumber">Phone Number :</label> <html:text property="phonenumber" styleId="phonenumber"/><html:errors property="phonenumber"/></div>
			<div data-role="fieldcontain"><label for="city">City :</label> <html:text property="city" styleId="city"/><html:errors property="city"/></div>
			<div data-role="fieldcontain"><label for="state">State :</label> <html:text property="state" styleId="state"/><html:errors property="state"/></div>
			<div data-role="fieldcontain"><label for="zipcode">Zipcode :</label> <html:text property="zipcode" styleId="zipcode"/><html:errors property="zipcode"/></div>
			<div data-role="fieldcontain"><label for="addrline1">Address Line1 :</label> <html:text property="addrline1" styleId="addrline1"/><html:errors property="addrline1"/></div>
			<div data-role="fieldcontain"><label for="addrline2">Address Line2 :</label> <html:text property="addrline2" styleId="addrline2"/><html:errors property="addrline2"/></div>
			<html:submit/>
		</html:form>
		
	    <logic:equal name="newAddress"value="1">
	    New Address added success
	    </logic:equal>
	    <logic:equal name="newAddress"value="0">
	    New Address added failed
	    </logic:equal>
	    </div>
	    </div>
	</body>
</html>

