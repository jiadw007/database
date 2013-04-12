<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>advancedSearchResult</title>
    <jsp:include page="/script.jsp" />
    <script src="" language="Javascript">
    </script>
    <script language="JavaScript">
  	    $(document).bind('pageinit', function() {
    		$(".mybtn1").buttonMarkup({
    			"inline": "true"
    		});
    	});
    </script>
  </head>
  <body>
  <div data-roel='page'>
	<div id="northpanel">
		<div data-role='header'>
			<h1>Search Result</h1>
			<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
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
        <div align="center" class='ui-grid-c'>
     	<div class='ui-block-a'>
    <html:link action="advancedQuery.do?PageIndex=1" styleClass="mybtn1">start</html:link>
    </div>
    <div class='ui-block-b'>
     <logic:equal name="pc" property="firstPage" value="false">
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="previousPageIndex" styleClass="mybtn1">previous</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-c'>
     <logic:equal name="pc" property="lastPage" value="false">
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="nextPageIndex" styleClass="mybtn1">next</html:link>
     </logic:equal>
     </div>
     <div class='ui-block-d'>
     <html:link action="advancedQuery.do"paramId="PageIndex" paramName="pc" paramProperty="pageCount" styleClass="mybtn1">end</html:link>
     </div>
     </div>
    <!--</logic:equal> -->
    <logic:equal name="advancedSearch" value="0">
		We are sorry for no results for you
	</logic:equal>
	</logic:present>
  </div>
  </div>
  </body>
</html>
