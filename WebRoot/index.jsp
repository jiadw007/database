<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'index.jsp' starting page</title>
	<jsp:include page="/script.jsp" />
  </head>
  
  <body> 
    <jsp:include page="/main.jsp" flush="true"></jsp:include>
    <logic:equal name="failed" value="0">
  Your Order has been placed!
  </logic:equal>
  </body>
</html>
