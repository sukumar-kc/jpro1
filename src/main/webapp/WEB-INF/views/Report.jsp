<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<% String contextPath = request.getContextPath(); %>
	<meta charset="utf-8">
    <meta name="Description" content="Test Environment Request Application">
    <meta name="author" content="Mahesh Kumar Palaniswamy">
    <meta name="Copyright" content="Copyright @ Tech Mahindra 2014.">
    <title>Test Environment Request Application : Report</title>
    <link rel="stylesheet" href="<%=contextPath%>/resources/stylesheets/tera.css" />
    <script language="JavaScript">
		function fnServiceRequestList()
		{
			document.reportForm.submit();
		}    
	</script>
</head>
<body>
<jsp:include page="Header.jsp">
  <jsp:param name="pageName" value="Report"/>
</jsp:include>
<form:form name="reportForm" id="reportForm" method="post" action="/serviceRequestList">
<table border="0" width="1200" cellspacing="5" cellpadding="5">
  <tr>
     <td>&nbsp;</td>
  </tr>
  <tr>
     <td align="center" width="1200" style="font-weight: bold;">Number of Submitted Requests :&nbsp;<a href="JavaScript: fnServiceRequestList();">6</a></td>
  </tr>
  <tr>
     <td align="center" width="1200" style="font-weight: bold;">Number of Completed Requests :&nbsp;<a href="JavaScript: fnServiceRequestList();">2</a></td>
  </tr>
  <tr>
     <td align="center" width="1200" style="font-weight: bold;">Number of In Progress Requests :&nbsp;<a href="JavaScript: fnServiceRequestList();">4</a></td>
  </tr>
  <tr>
     <td>&nbsp;</td>
  </tr>
  <tr>
     <td><img src="<%=request.getContextPath()%>/resources/images/Graph2.png"></td>
  </tr>
  <tr>
     <td>&nbsp;</td>
  </tr>
</table>
</form:form>
<jsp:include page="Footer.jsp" />
</body>
</html>