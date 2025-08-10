<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<% String contextPath = request.getContextPath(); %>
	<meta charset="utf-8">
    <meta name="Description" content="Test Environment Request Application">
    <meta name="author" content="Mahesh Kumar Palaniswamy">
    <meta name="Copyright" content="Copyright @ Tech Mahindra 2014.">
    <title>Test Environment Request Application : Service Request Created</title>
    <link rel="stylesheet" href="<%=contextPath%>/resources/stylesheets/tera.css" />
    <script language="JavaScript">
    	function fnServiceRequestDetails()
    	{
    		document.serviceRequestListForm.submit();
        }
    </script>    
</head>
<body>
<jsp:include page="Header.jsp">
  <jsp:param name="pageName" value="Service Request List"/>
</jsp:include>
<form:form name="serviceRequestListForm" id="serviceRequestListForm" method="post" action="serviceRequestDetails">
<table align="center" bgcolor="#787878" border="1" width="1200" cellspacing="1" cellpadding="5" style="border-collapse: inherit;">
  <tr bgcolor="#787878">
 	<td width="250" align="center"><font color="#000000">Service Request Number</font></td>
 	<td width="200" align="center"><font color="#000000">Created Date</font></td>
 	<td width="200" align="center"><font color="#000000">Status</font></td>
 	<td width="500" align="center"><font color="#000000">Reason for Request</font></td>
 </tr>
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('20141205001');">20141205001</a></td>
 	<td align="center">05-12-2014</td>
 	<td align="center">In Progress</td>
 	<td align="left">Performance Testing of the application.</td>
 </tr> 
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('20141204001');">20141204001</a></td>
 	<td align="center">a04-12-2014</td>
 	<td align="center">In Progress</td>
 	<td align="left">Integration Testing.</td>
 </tr> 
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('20141203003');">20141203003</a></td>
 	<td align="center">03-12-2004</td>
 	<td align="center">In Progress</td>
 	<td align="left">System testing.</td>
 </tr> 
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('20141203002');">20141203002</a></td>
 	<td align="center">03-12-2004</td>
 	<td align="center">In Progress</td>
 	<td align="left">Performance Testing</td>
 </tr> 
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('20141203001');">20141203001</a></td>
 	<td align="center">03-12-2004</td>
 	<td align="center">Provisioned</td>
 	<td align="left">Testing of the application.</td>
 </tr> 
 <tr bgcolor="#FFFFFF">
 	<td align="center"><a href="JavaScript: fnServiceRequestDetails('2014120201');">20141202001</a></td>
 	<td align="center">02-12-2004</td>
 	<td align="center">Provisioned</td>
 	<td align="left">Application testing.</td>
 </tr>
</table>
</form:form>
<table border="0" width="1200" cellspacing="5" cellpadding="5">
  <tr>
     <td>&nbsp;</td>
  </tr>
</table>
<jsp:include page="Footer.jsp" />
</body>
</html>