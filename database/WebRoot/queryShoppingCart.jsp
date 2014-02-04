<%@ page language="java" import="java.util.*" import="po.Order"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Shopping Cart page</title>
    <jsp:include page="/script.jsp" />
  </head>
  
  <body>
  		<div id="northpanel" data-role="header">
  		<h1>Shopping Cart</h1>
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel" data-role="content">
  	<%float sum=0; %>
    <logic:iterate id="order" name="shoppingcart">
    <%Order o=(Order)order;
      sum=sum+o.getAmount();
    %>
    <table>
    <tr>
    <td>BookSKU:</td>
    <td><bean:write name="order" property="sku"></bean:write></td>
    </tr>
    <tr>
    <td>Quantity:</td>
    <td><bean:write name="order" property="quantity"></bean:write></td>
    </tr>
    <tr>
    <td>Order Time:</td>
    <td><bean:write name="order" property="placeOnDate"></bean:write></td>
    </tr>
    <tr>
    <td>Amount:</td>
    <td><bean:write name="order" property="amount"></bean:write></td>
    </tr>
    <tr>
    <td>Status:</td>
    <td><bean:write name="order" property="status"></bean:write></td>
    </tr>
    </table><br />
    </logic:iterate><br />
    THE TOTAL AMOUNT:<%out.println(sum); %><br /><br />
    <a href="/database/index.do" data-role="button" data-icon="back" data-theme="b">Buy more book</a>
    <a href="/database/chooseShippingAddress.do" data-role="button" data-icon="info" data-theme="e">CHECK OUT</a>
	</div>
  </body>
</html>
