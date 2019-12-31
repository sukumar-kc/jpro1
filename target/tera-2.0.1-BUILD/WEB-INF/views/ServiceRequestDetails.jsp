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
    <title>Test Environment Request Application : Service Request Details</title>
    <link rel="stylesheet" href="<%=contextPath%>/resources/stylesheets/tera.css" />
	
</head>
<body>
<jsp:include page="Header.jsp">
  <jsp:param name="pageName" value="Service Request Details"/>
</jsp:include>
<table align="center" border="1" width="1200" style="border-collapse: inherit;" cellspacing="1">
	<tr>
		<td rowspan="3">
<table border="0" width="600" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">General Details</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">User Name : </td>
     <td align="left" width="300">Mahesh Kumar Palaniswamy</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Email Id : </td>
     <td align="left" width="300">mahesh.palaniswamy@techmahindra.com</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Extension Number : </td>
     <td align="left" width="300">58380</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Mobile Phone Number : </td>
     <td align="left" width="300">8197403209</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Current Location Details : </td>
     <td align="left" width="300">Information Technology Center-4, Ground Floor, HP Lab</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Project Id : </td>
     <td align="left" width="300">1244234</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Project Name : </td>
     <td align="left" width="300">DevOps Competency</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Project Description : </td>
     <td align="left" width="300">DevOps Competency handling the applications used for DevOps.</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Reason for Request : </td>
     <td align="left" width="300">Performance Testing of the application.</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Required Date Range : </td>
     <td align="left" width="300">20-12-2014&nbsp;~&nbsp;21-12-2014
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Number of Users : </td>
     <td align="left" width="300">2</td>
  </tr>
</table>
		</td>
		<td>
<table border="0" width="600" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Server Details</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Server Type : </td>
     <td align="left" width="300">Virtual
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Number of Servers : </td>
     <td align="left" width="300" style="color: #000000;">Initial : 1&nbsp;Maximum : 1
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Processors per Server : </td>
     <td align="left" width="300" style="color: #000000;">Initial : 1&nbsp;Maximum : 4
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Memory Size : </td>
     <td align="left" width="300" style="color: #000000;">Initial : 1024 MB&nbsp;Maximum : 2048 MB 
	 </td>
  </tr>
</table>
</td>
</tr>  
  <tr>
  	  <td>
<table border="0" width="600" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Operating System Details</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Operating System : </td>
     <td align="left" width="300">Windows
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Operating System Version : </td>
     <td align="left" width="300">Windows Server 2008
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Service Pack (if applicable) : </td>
     <td align="left" width="300">Service Pack 1
	 </td>
  </tr>
</table>
	  </td>
  </tr>
	<tr>
		<td>
<table border="0" width="600" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Software Details</td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Software Platform : </td>
     <td align="left" width="300">Java&nbsp;Version : 1.7
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Middleware : </td>
     <td align="left" width="300">Jboss&nbsp;Version : 7&nbsp;7.1.1
	 </td>
  </tr>
  <tr>
     <td align="right" width="300" style="color: #000000;">Database : </td>
     <td align="left" width="300">MySql
	 </td>
  </tr>
</table>
		</td>
	</tr>
</table>
<jsp:include page="Footer.jsp" />
</body>
</html>