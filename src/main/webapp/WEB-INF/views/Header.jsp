<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<table border="0" width="1200">
  <tr>
     <td align="left"><img src="<%=request.getContextPath()%>/resources/images/Capture2.PNG"></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
     <td><font color="#000000" style="font-weight: bold;"><%=request.getParameter("pageName") %></font></td>
  </tr>
</table>
<script language="JavaScript">
	function fnLoadHome()
	{
		document.headerForm.action = "loadHomePage";
		document.headerForm.submit();
	}

	function fnCreateServiceRequest()
	{
		document.headerForm.action = "loadCreateServiceRequestPage";
		document.headerForm.submit();
	}

	function fnServiceRequestList()
	{
		document.headerForm.action = "serviceRequestList";
		document.headerForm.submit();
	}

	function fnReport()
	{
		document.headerForm.action = "report";
		document.headerForm.submit();
	}

	function fnLogout()
	{
		document.headerForm.action = "logout";
		document.headerForm.submit();		
	}
</script>
<form:form name="headerForm" id="headerForm" method="post">
<table border="1" width="1200" bgcolor="#FF0B2C">
  <tr>
     <td width="100"><a href="javascript: fnLoadHome();"><font color="#FFFFFF">Home</font></a></td>
     <td width="200"><a href="javascript: fnCreateServiceRequest();"><font color="#FFFFFF">Create Service Request</font></a></td>
     <td width="200"><a href="javascript: fnServiceRequestList();"><font color="#FFFFFF">View Service Request(s)</font></a></td>
	 <td width="100"><a href="javascript: fnReport();"><font color="#FFFFFF">Report</font></a></td>
     <td width="100"><a href="javascript: fnLogout();"><font color="#FFFFFF">Logout</font></a></td>
	 <td width="500">&nbsp;</td>
  </tr>
</table>
</form:form>