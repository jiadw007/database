<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>select Top Book</title>
  </head>
  
  <body>
    <table>
    <tr>
    <td>NO.</td>
    <td>ISBN</td>
    <td>BOOKTITLE</td>
    <td>SUM</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="book" name="topbook">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="book" property="isbn"></bean:write></td>
    <td><bean:write name="book" property="booktitle"></bean:write></td>
    <td><bean:write name="book" property="sum"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
  </body>
</html>
