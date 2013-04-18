<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
	  <a href="index.html" data-icon="home">Home</a>
	  <a href="#popupMenu" data-rel="popup" data-role="button" data-inline="true" data-transition="slideup" data-icon="gear" data-theme="e" class="ui-btn-right">Actions...</a>
      <div data-role="popup" id="popupMenu" data-theme="d">
      <ul data-role="listview" data-inset="true" style="min-width:210px;" data-theme="d">
          <li data-role="divider" data-theme="e">Shopping</li>
          <li><html:link page="/searchBook.jsp">Search Book</html:link></li>
          <li><html:link page="/queryShoppingCart.jsp">Shopping Cart</html:link></li>
          <li data-role="divider" data-theme="e">Account Settings</li>
          <li><html:link page="/updateUser.jsp">Change Account Settings</html:link></li>
          <li><html:link action="manageAddress.do">Manage Address Book</html:link></li>
          <li><html:link page="/addNewAddress.jsp">Add New Address</html:link></li>
          <li data-role="divider" data-theme="e">Order History</li>
          <li><html:link action="checkOrder.do">View Open Orders</html:link></li>
          <li data-role="divider" data-theme="e">Payment Method</li>
          <li><html:link action="manageCredit.do">Manage Payment Options</html:link></li>
          <li><html:link page="/addNewCredit.jsp">Add a Credit or Debit Card</html:link></li>
          <li data-role="divider" data-theme="e">Login/Logout</li>
          <li><a href="userLogin.jsp">Login</a></li>
          <li><html:link page="#">Logout</html:link></li>
      </ul>
      </div>


