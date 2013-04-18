<%@ page language="java" import="java.util.*" import="po.Credit"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>choose Payment</title>
<jsp:include page="/script.jsp" />
  </head>
  
  <body>
    <div id="northpanel" data-role="header">
    <h1>Checkout - Payment</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
	<div id="centerpanel" data-role="content"> 
    <logic:equal name="choose" value="1">
    <html:form action="/checkOut">
    <div data-role="fieldcontain">
    <fieldset data-role="controlgroup">
    <legend>Choose a credit card</legend>
    <% int i=1; %>
    <logic:iterate id="credit" name="creditlist">
    <%Credit c=(Credit)credit; %>
    <html:radio property="cardnumber" value="<%=String.valueOf(c.getCardNumber())%>" styleId="<%="test" + i%>">
    <!-- <bean:write name="credit" property="cardNumber"/> -->
    </html:radio>
    <label for="test<%=i%>"><%=String.valueOf(c.getCardNumber())%></label>
    <% i++; %>
    </logic:iterate>
    </fieldset>
    </div>
    <html:text property="cvv2"></html:text><br>
    <html:submit value="Checkout"/>
    </html:form>
    </logic:equal>
    <logic:equal name="choose" value="0">
    No address, please add a new credit <html:link page="/addNewCredit.jsp">Add New Credit</html:link>
   </logic:equal>
   <logic:equal name="failed" value="1">
   Wrong CVV2,please input it again
   </logic:equal>
   </div>
  </body>
</html>
