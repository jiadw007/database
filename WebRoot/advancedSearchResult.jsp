<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>advancedSearchResult</title>
    <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
  </head>
  
  <body>
    <logic:present name="advancedSearch">
    <logic:equal name="advancedSearch" value="1">
    <logic:iterate id="book" name="pc" property="smallList">
    <table>
		<tr>
		<td>ISBN:</td>
		<td><html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn"><bean:write name="book" property="isbn"/></html:link></td>
		</tr>
	    <tr>
		<td>TITLE:</td>
		<td><bean:write name="book" property="booktitle"/></td>
		</tr>
		<tr>
		<td>AUTHOR:</td>
		<td><bean:write name="book" property="author"/></td>
		</tr>
		<tr>
		<td>PUBLISHTIME:</td>
		<td><bean:write name="book" property="publishtime"/></td>
		</tr>
		</table>
		<br /><br /><br />
    </logic:iterate>
    <html:link action="advancedQuery.do?PageIndex=1">start</html:link>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex">previous</html:link>
     </logic:equal>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex">next</html:link>
     </logic:equal>
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount">end</html:link>
    </logic:equal>
    <logic:equal name="advancedSearch" value="0">
		We are sorry for no results for you
	</logic:equal>
	</logic:present>
  </body>
</html>