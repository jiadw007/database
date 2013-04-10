<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>select Top Book</title>
	<jsp:include page="/script.jsp" />
  </head>
  
  <body>
  <div id="northpanel">
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
    <table>
    <tr>
    <td>NO.</td>
    <td>ISBN</td>
    <td>BOOKTITLE</td>
    <td>AMOUNT</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="book" name="topsale">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="book" property="isbn"></bean:write></td>
    <td><bean:write name="book" property="booktitle"></bean:write></td>
    <td><bean:write name="book" property="amount"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
	</div>
  </body>
</html>
