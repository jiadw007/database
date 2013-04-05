<%@ page language="java" import="java.util.*" import="po.Credit" import="java.sql.Date"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>Update Credit card </title>
		<script src="js/jquery-1.9.1.js" language="JavaScript"></script>
	</head>
	<body> 
	    <%Credit credit=(Credit)request.getSession().getAttribute("editCredit"); 
	      Date date=credit.getExperionDate();
	      String year=String.valueOf(date.getYear()+1900);
	      String month="0"+String.valueOf(date.getMonth()+1);
	      System.out.println(year);
	      System.out.println(month);
	      %>
		<html:form action="/updateCredit">
		   <table>
		   <tr>
		   <td>card number</td>
		   <td><bean:write name="editCredit" property="cardNumber"></bean:write></td>
		   </tr>
		   <tr>
  <td>name on card:</td>
  <td><html:text property="nameoncard" value="<%=credit.getNameOnCard() %>"/></td>
  <td><html:errors property="nameoncard"/></td>
  </tr>
  <tr>
  <td>cardCVV2:</td>
  <td><html:text property="cardcvv2" value="<%=String.valueOf(credit.getCaredCVV2()) %>"/></td>
  <td><html:errors property="cardcvv2"/></td>
  </tr>
  <tr>
  <td>cardType:</td>
  <td><html:select property="cardtype" value="<%=credit.getFirstname() %>">
      <html:option value="visa">VISA</html:option>
	  <html:option value="master">MasterCard</html:option>
      <html:option value="express">Express</html:option>
      </html:select>
  </td>
  </tr>
  <tr>
  <td>experiondate</td>
  <td><html:select property="month" value="<%=month%>">
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
		                  <html:select property="year" value="<%=year %>">
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
		                  
		                  </html:select></td>
  </tr>
  <tr>
  <td>first name:</td>
  <td><html:text property="firstname" value="<%=credit.getFirstname() %>"/></td>
  <td><html:errors property="firstname"/></td>
  </tr>
  <tr>
  <td>last name: </td>
  <td><html:text property="lastname" value="<%=credit.getLastname() %>"/></td>
  <td><html:errors property="lastname"/></td>
  </tr>
  <tr>
  <td>phone number:</td>
  <td><html:text property="phonenumber" value="<%=credit.getPhonenumber() %>"/></td>
  <td><html:errors property="phonenumber"/></td>
  </tr>
  <tr>
  <td>company: </td>
  <td><html:text property="company" value="<%=credit.getCompany() %>"/></td>
  <td><html:errors property="company"/></td>
  </tr>
  <tr>
  <td>city: </td>
  <td><html:text property="city" value="<%=credit.getCity() %>"/></td>
  <td><html:errors property="city"/></td>
  </tr>
  <tr>
  <td>state: </td>
  <td><html:text property="state" value="<%=credit.getState() %>"/></td>
  <td><html:errors property="state"/></td>
  </tr>
  <tr>
  <td>zipcode:</td>
  <td><html:text property="zipcode" value="<%=String.valueOf(credit.getZipcode()) %>"/></td>
  <td><html:errors property="zipcode"/></td>
  </tr>
  <tr>
  <td>address line1: </td>
  <td><html:text property="addr1" value="<%=credit.getAddressline1() %>"/></td>
  <td><html:errors property="addr1"/></td>
  </tr>
  <tr>
  <td>address line2: </td>
  <td><html:text property="addr2" value="<%=credit.getAddressline2() %>"/></td>
  <td><html:errors property="addr2"/></td>
  </tr>
  </table>
  <html:submit/>
  </html:form>
  
  <logic:equal name="updateCredit" value="1">
  Update Credit card success
  </logic:equal>
  <logic:equal name="updateCredit" value="0">
  Update Credit card failed
  </logic:equal>
	</body>
</html>

