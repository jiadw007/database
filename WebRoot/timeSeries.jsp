<%@ page language="java" import="java.util.*" import="po.timeSeries"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>time Series</title>
  </head>
  
  <body>
    <table>
    <tr>
    <td>YEAR</td>
    <td>MONTH</td>
    <td>SUM</td>
    </tr>
    <logic:iterate id="series" name="time">
    <tr>
    <td><bean:write name="series" property="year"/></td>
    <td><bean:write name="series" property="month"/></td>
    <td><bean:write name="series" property="sum"/></td>
    </tr>
    </logic:iterate>
    </table>
    <logic:equal name="stats" value="1">
    NO STATS
    </logic:equal>
  </body>
</html>
