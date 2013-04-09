<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>advance Select</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <script src="js/jquery-1.9.1.js" language="JavaScript"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
    <script>
  $(function() {
    
    $( "#from").datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 1,
      dateFormat:"yy-mm-dd",
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 1,
      dateFormat:"yy-mm-dd",
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
    $.a
  });
  </script>
  </head>
  
  <body>
    <html:form action="/advanceSelect">
    <label for="from">From</label>
    <html:text property="from" styleId="from"></html:text>
    <label for="to">to</label>
    <html:text property="to" styleId="to"></html:text>
    <html:select property="method" value="book">
    <html:option value="book">book</html:option>
    <html:option value="buyer">buyer</html:option>
    <html:option value="sale">sale</html:option>
    <html:option value="supplier">supplier</html:option>
    </html:select>
    <html:submit></html:submit>
    </html:form>
    <logic:equal name="advance" value="0">
    Sorry, no results for this top list
    </logic:equal>
    <logic:equal name="advance" value="1">
    <table>
    <tr>
    <td>NO.</td>
    <td>ISBN</td>
    <td>BOOKTITLE</td>
    <td>SUM</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="book" name="advanceResult">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="book" property="isbn"></bean:write></td>
    <td><bean:write name="book" property="booktitle"></bean:write></td>
    <td><bean:write name="book" property="sum"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
    </logic:equal>
    <logic:equal name="advance" value="2">
    <table>
    <tr>
    <td>NO.</td>
    <td>ISBN</td>
    <td>BOOKTITLE</td>
    <td>AMOUNT</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="book" name="advanceResult">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="book" property="isbn"></bean:write></td>
    <td><bean:write name="book" property="booktitle"></bean:write></td>
    <td><bean:write name="book" property="amount"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
    </logic:equal>
    <logic:equal name="advance" value="3">
    <table>
    <tr>
    <td>NO.</td>
    <td>ID</td>
    <td>USERNAME</td>
    <td>SUM</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="buyer" name="advanceResult">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="buyer" property="ID"></bean:write></td>
    <td><bean:write name="buyer" property="username"></bean:write></td>
    <td><bean:write name="buyer" property="sum"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
    </logic:equal>
    <logic:equal name="advance" value="4">
     <table>
    <tr>
    <td>NO.</td>
    <td>ID</td>
    <td>NAME</td>
    <td>SUM</td>
    </tr>
    <%int i=1; %>
    <logic:iterate id="supplier" name="advanceResult">
    <tr>
    <td><%out.println(i++); %></td>
    <td><bean:write name="supplier" property="ID"></bean:write></td>
    <td><bean:write name="supplier" property="username"></bean:write></td>
    <td><bean:write name="supplier" property="sum"></bean:write></td>
    </tr>
    </logic:iterate>
    </table>
    </logic:equal>
  </body>
</html>
