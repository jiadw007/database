<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>advancedSearchResult</title>
    <jsp:include page="/script.jsp" />
    <script src="" language="Javascript"></script>
  
  </head>
  <body>
  <div id="northpanel">
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
  </div>
  <div id="centerpanel">
    <logic:present name="advancedSearch">
    <logic:equal name="advancedSearch" value="1">
    <table id="advsearch">
    <tr>
		<th>ISBN</th>
		<th>Title</th>
		<th>Author</th>
		<th>Publish Time</th>
	<tr>
    <logic:iterate id="book" name="pc" property="smallList">
    	<tr>
			<td><html:link action="bookInformation.do" paramId="is" paramName="book" paramProperty="isbn"><bean:write name="book" property="isbn"/></html:link></td>
			<td><bean:write name="book" property="booktitle"/></td>
			<td><bean:write name="book" property="author"/></td>
			<td><bean:write name="book" property="publishtime"/></td>
		</tr>
    </logic:iterate>
    </table>
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
  </div>
  </body>
</html>
