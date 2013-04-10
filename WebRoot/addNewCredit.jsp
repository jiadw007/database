<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<html> 
	<head>
		<title>Add New Credit Form </title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel">
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
		<html:form action="/addNewCredit"> 
		    cardNumber : <html:text property="cardnumber"/><html:errors property="cardnumber"/><br/>
		    name on card : <html:text property="nameoncard"/><html:errors property="nameoncard"/><br/>
		    card cvv2 : <html:text property="cardcvv2"/><html:errors property="cardcvv2"/><br/>
		    experiondate :<html:select property="month" value="01">
		                  <html:option value="01">01</html:option>
		                  <html:option value="02">02</html:option>
		                  <html:option value="03">03</html:option>
		                  <html:option value="04">04</html:option>
		                  <html:option value="05">05</html:option>
		                  <html:option value="06">06</html:option>
		                  <html:option value="07">07</html:option>
		                  <html:option value="08">08</html:option>
		                  <html:option value="09">09</html:option>
		                  <html:option value="10">10</html:option>
		                  <html:option value="11">11</html:option>
		                  <html:option value="12">12</html:option>
		                  </html:select>
		                  <html:select property="year" value="2013">
		                  <html:option value="2013">2013</html:option>
		                  <html:option value="2014">2014</html:option>
		                  <html:option value="2015">2015</html:option>
		                  <html:option value="2016">2016</html:option>
		                  <html:option value="2017">2017</html:option>
		                  <html:option value="2018">2018</html:option>
		                  <html:option value="2019">2019</html:option>
		                  <html:option value="2020">2020</html:option>
		                  <html:option value="2021">2021</html:option>
		                  <html:option value="2022">2022</html:option>
		                  <html:option value="2023">2023</html:option>
		                  <html:option value="2024">2024</html:option>
		                  <html:option value="2025">2025</html:option>
		                  <html:option value="2026">2026</html:option>
		                  
		                  </html:select><br />
		    cardtype :  <html:select property="cardtype" value="visa">
		                <html:option value="visa">VISA</html:option>
		                <html:option value="master">MasterCard</html:option>
		                <html:option value="express">Express</html:option>
		                </html:select><br />
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
		<logic:equal name="newCredit"value="1">
	    New Credit added success
	    </logic:equal>
	    <logic:equal name="newCredit"value="0">
	    New Credit added failed
	    </logic:equal>
		</div>
	</body>
</html>

