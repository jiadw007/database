<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<a href="#popupMenu" data-rel="popup" data-role="button" data-inline="true" data-transition="slideup" data-icon="gear" data-theme="e" class="ui-btn-right">Actions...</a>
   <div data-role="popup" id="popupMenu" data-theme="d">
   <ul data-role="listview" data-inset="true" style="min-width:210px;" data-theme="d">
       <li data-role="divider" data-theme="e">Top List</li>
       <li><html:link action="selectTopBook.do">Top 10 Books</html:link></li>
       <li><html:link action="selectTopBuyer.do">Top 10 Customers</html:link></li>
       <li><html:link action="selectTopSale.do">Toe 10 Sales</html:link></li>
       <li><html:link action="selectTopSupplier.do">Top 10 Suppliers</html:link></li>
       <li><html:link page="/advanceSelect.jsp">Advance Top List</html:link></li>
       <li><html:link action="timeSeries.do">Time Series</html:link></li>
       <li data-role="divider" data-theme="e">Order</li>
       <li><html:link action="queryOrder.do">Check All Orders</html:link></li>
       <li><html:link page="/queryOneOrder.jsp">Update Order Status</html:link></li>
       <li data-role="divider" data-theme="e">User</li>
       <li><html:link action="queryUser.do">Check All Users</html:link></li>
       <li data-role="divider" data-theme="e">Book Status</li>
       <li><html:link action="queryBook.do">Check All Books</html:link></li>
       <li><html:link page="/queryOneBook.jsp">Update Book Information</html:link></li>
       <li><html:link page="/insertBook.jsp">Add New Book</html:link></li>
   </ul>
   </div>