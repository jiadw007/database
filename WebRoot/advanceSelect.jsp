<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML>
<html>
<head>
<title>advance Select</title>
    <jsp:include page="/script.jsp"></jsp:include>
<script>
	$(function() {
		$('#from').datebox({
			"mode" : "calbox",
			"dateFormat" : "%Y-%m-%d"
		});
		$('#to').datebox({
			"mode" : "calbox",
			"dateFormat" : "%Y-%m-%d"
		});
	});
</script>

</head>

<body>
	<div data-role="page">
	<div id="northpanel">
		<div data-role="header" id="foo">
			<h1>Sales Statistics</h1>
			<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
		</div>
	</div>
	<div id="centerpanel">
	<html:form action="/advanceSelect">
    From:
    <html:text property="from" styleId="from"></html:text>
    To:
    <html:text property="to" styleId="to"></html:text>
	<div class="ui-grid-a">
		<div class="ui-block-a">
			<html:select property="method" value="book">
				<html:option value="book">book</html:option>
				<html:option value="buyer">buyer</html:option>
				<html:option value="sale">sale</html:option>
				<html:option value="supplier">supplier</html:option>
			</html:select>
		</div>
		<div class="ui-block-b">
			<html:submit></html:submit>
		</div>
	</div>	
	</html:form>
	<logic:equal name="advance" value="0">
    Sorry, no results for this top list
    </logic:equal>
		<logic:equal name="advance" value="1">
			<table data-role="table" id="advbook" data-mode="columntoggle">
				<tr>
					<th>NO.</th>
					<th>ISBN</th>
					<th>BOOKTITLE</th>
					<th>SUM</th>
				</tr>
				<%
					int i = 1;
				%>
				<logic:iterate id="book" name="advanceResult">
					<tr>
						<td>
							<%
								out.println(i++);
							%>
						</td>
						<td><bean:write name="book" property="isbn"></bean:write>
						</td>
						<td><bean:write name="book" property="booktitle"></bean:write>
						</td>
						<td><bean:write name="book" property="sum"></bean:write>
						</td>
					</tr>
				</logic:iterate>
			</table>
		</logic:equal>
		<logic:equal name="advance" value="2">
			<table data-role="table" data-mode="columntoggle" id="advcustomer">
				<tr>
					<th>NO.</th>
					<th>ISBN</th>
					<th>BOOKTITLE</th>
					<th>AMOUNT</th>
				</tr>
				<%
					int i = 1;
				%>
				<logic:iterate id="book" name="advanceResult">
					<tr>
						<td>
							<%
								out.println(i++);
							%>
						</td>
						<td><bean:write name="book" property="isbn"></bean:write>
						</td>
						<td><bean:write name="book" property="booktitle"></bean:write>
						</td>
						<td><bean:write name="book" property="amount"></bean:write>
						</td>
					</tr>
				</logic:iterate>
			</table>
		</logic:equal>
		<logic:equal name="advance" value="3">
			<table data-role="table" data-mode="columntoggle">
				<tr>
					<th>NO.</th>
					<th>ID</th>
					<th>USERNAME</th>
					<th>SUM</th>
				</tr>
				<%
					int i = 1;
				%>
				<logic:iterate id="buyer" name="advanceResult">
					<tr>
						<td>
							<%
								out.println(i++);
							%>
						</td>
						<td><bean:write name="buyer" property="ID"></bean:write>
						</td>
						<td><bean:write name="buyer" property="username"></bean:write>
						</td>
						<td><bean:write name="buyer" property="sum"></bean:write>
						</td>
					</tr>
				</logic:iterate>
			</table>
		</logic:equal>
		<logic:equal name="advance" value="4">
			<table data-role="table" data-mode="columntoggle">
				<tr>
					<th>NO.</th>
					<th>ID</th>
					<th>NAME</th>
					<th>SUM</th>
				</tr>
				<%
					int i = 1;
				%>
				<logic:iterate id="supplier" name="advanceResult">
					<tr>
						<td>
							<%
								out.println(i++);
							%>
						</td>
						<td><bean:write name="supplier" property="ID"></bean:write>
						</td>
						<td><bean:write name="supplier" property="username"></bean:write>
						</td>
						<td><bean:write name="supplier" property="sum"></bean:write>
						</td>
					</tr>
				</logic:iterate>
			</table>
		</logic:equal>
	</div>
	</div>
</body>
</html>
