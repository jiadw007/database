<%@ page language="java" import="java.util.*" import="po.timeSeries"pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Time Series</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Time', 'Sales'],
            <logic:iterate id="series" name="time">
		    ['<bean:write name="series" property="month"/>/<bean:write name="series" property="year"/>', <bean:write name="series" property="sum"/>],
		    </logic:iterate>		    
        ]);

        var options = {
          title: 'Sales Performance over Time'
        };

        var chart = new google.visualization.LineChart(document.getElementById('table-div'));
        chart.draw(data, options);
      }
    </script>
	<jsp:include page="/script.jsp" />
	<script>
		$(document).bind('pageinit', function() {
			drawChart();
		});
	</script>
  </head>
  
  <body>
  	<div id="northpanel" data-role="header">
  		<h1>Sales Overview</h1>
		<jsp:include page="/employeeMain.jsp" flush="true"></jsp:include>
	</div>
		<div id="centerpanel" data-role="content">
		<div id="table-div" style='{height: 500px}'></div>
    <logic:equal name="stats" value="1">
    NO STATS
    </logic:equal>
	</div>
  </body>
</html>
