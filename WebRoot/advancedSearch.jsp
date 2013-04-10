<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
	<head>
		<title>Advanced Search Book</title>
		<jsp:include page="/script.jsp" />
	</head>
	<body>
	<div id="northpanel">
		<jsp:include page="/main.jsp" flush="true"></jsp:include>
		</div>
		<div id="centerpanel">
		<html:form action="/advancedSearch"> 
		    ISBN : <html:text property="isbn"/><html:errors property="isbn"/><br/>
			AUTHOR : <html:text property="author"/><html:errors property="author"/><br/>
			TITLE : <html:text property="title"/><html:errors property="title"/><br/>
			PUBLISH DATE <html:select property="time" value="Any">
			             <html:option value="Any">Any</html:option>
			             <html:option value="Before">Before</html:option>
			             <html:option value="After">After</html:option>
			             </html:select>
			             <html:select property="month" value="">
			             <html:option value="">Month</html:option>
			             <html:option value="01">January</html:option>
			             <html:option value="02">February</html:option>
			             <html:option value="03">March</html:option>
			             <html:option value="04">April</html:option>
			             <html:option value="05">May</html:option>
			             <html:option value="06">June</html:option>
			             <html:option value="07">July</html:option>
			             <html:option value="08">August</html:option>
			             <html:option value="09">September</html:option>
			             <html:option value="10">October</html:option>
			             <html:option value="11">November</html:option>
			             <html:option value="12">December</html:option>
			             </html:select>
			             <html:text property="year"></html:text><br>
			<html:submit value="Search"/><html:cancel/>
		</html:form>
		</div>
	</body>
</html>

