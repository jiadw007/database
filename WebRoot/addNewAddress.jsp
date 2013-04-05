<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>Add New Address</title>
		<script src="js/jquery-1.9.1.js" language="JavaScript"></script>
	</head>
	<body>
		<html:form action="/addNewAddress">
			firstname : <html:text property="firstname"/><html:errors property="firstname"/><br/>
			lastname : <html:text property="lastname"/><html:errors property="lastname"/><br/>
			company : <html:text property="company"/><html:errors property="company"/><br/>
			phonenumber : <html:text property="phonenumber"/><html:errors property="phonenumber"/><br/>
			city : <html:text property="city"/><html:errors property="city"/><br/>
			state : <html:text property="state"/><html:errors property="state"/><br/>
			zipcode : <html:text property="zipcode"/><html:errors property="zipcode"/><br/>
			addrline1 : <html:text property="addrline1"/><html:errors property="addrline1"/><br/>
			addrline2 : <html:text property="addrline2"/><html:errors property="addrline2"/><br/>
			<html:submit/>
		</html:form>
	    <logic:equal name="newAddress"value="1">
	    New Address added success
	    </logic:equal>
	    <logic:equal name="newAddress"value="0">
	    New Address added failed
	    </logic:equal>
	</body>
</html>

