<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>Advanced Search Book</title>
		<jsp:include page="/script.jsp" />
		<script>
			$(function() {
				$('#year').datebox({
					"mode" : "calbox",
					"dateFormat" : "%Y-%m-%d"
				});
			});	
		</script>
	</head>
	<body>
	<div data-role='page'>
	<div id="northpanel">
		<div data-role='header'>
			<h1>Advanced Search</h1>
			<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
	</div>
	<div data-role="content">
		<html:form action="/advancedSearch"> 
		    ISBN : <html:text property="isbn"/><html:errors property="isbn"/><br/>
			AUTHOR : <html:text property="author"/><html:errors property="author"/><br/>
			TITLE : <html:text property="title"/><html:errors property="title"/><br/>
			PUBLISH DATE 
			<div class="ui-grid-a">
				<div class="ui-block-a">		
			        <html:select property="time" value="Before">
			             <html:option value="Any">Any</html:option>
			             <html:option value="Before">Before</html:option>
			             <html:option value="After">After</html:option>
			         </html:select>
			    </div>
			<div class="ui-block-b">
			    <html:text property="year" styleId="year"></html:text>
			</div>
			</div>
			<html:submit value="Search"/>
			<html:reset/>
		</html:form>
	</div>
	</div>
	</body>
</html>

