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
    <title>Test Environment Request Application : Create Service Request</title>
    <link rel="stylesheet" href="<%=contextPath%>/resources/stylesheets/tera.css" />
	
	<script language="javascript" type="text/javascript" src="<%=contextPath%>/resources/javascripts/tera.js"></script>
</head>
<body>
<jsp:include page="Header.jsp">
  <jsp:param name="pageName" value="Create Service Request"/>
</jsp:include>
<form:form name="createServiceRequestForm" id="createServiceRequestForm" method="post" action="createServiceRequest" onsubmit="return validateFormService()">
<table align="center" border="1" width="1190" style="border-collapse: inherit;" cellspacing="1">
	<tr>
		<td rowspan="3">
<table border="0" width="595" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">General Details</td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">User Name : </td>
     <td align="left" width="295"><input type="text" name="username" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Email Id : </td>
     <td align="left" width="295"><input type="text" name="emailid" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Extension Number : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Mobile Phone Number : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Current Location Details : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Project Id : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Project Name : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Project Description : </td>
     <td align="left" width="295"><textarea name="" rows="2" cols="25"></textarea></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Reason for Request : </td>
     <td align="left" width="295"><textarea name="" rows="2" cols="25"></textarea></td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Required Date Range : </td>
     <td align="left" width="295"><input type="text" name="txtFromDate" id="txtFromDate" value="" size="8">
	 <a href="JavaScript: NewCal('txtFromDate','ddmmyyyy')"><img src="<%=contextPath%>/resources/images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>&nbsp;~&nbsp;
	 <input type="text" name="txtToDate" id="txtToDate" value="" size="8">
	 <a href="JavaScript: NewCal('txtToDate','ddmmyyyy')"><img src="<%=contextPath%>/resources/images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Number of Users : </td>
     <td align="left" width="295"><input type="text" name="" value="" size="31"></td>
  </tr>
</table>
		</td>
		<td>
<table border="0" width="595" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Server Details</td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Server Type : </td>
     <td align="left" width="295">
	 <select name="cbServerType" id="cbServerType">
      <option selected>Virtual</option>
      <option>Physical</option>
    </select>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Number of Servers : </td>
     <td align="left" width="295" style="color: #000000;">Initial : 
	 <select name="">
      <option selected value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
	&nbsp;Maximum : 
	 <select name="">
      <option selected value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Processors per Server : </td>
     <td align="left" width="295" style="color: #000000;">Initial : 
	 <select name="">
      <option selected value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
    </select>
	&nbsp;Maximum : 
	 <select name="">
      <option selected value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
    </select>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Memory Size : </td>
     <td align="left" width="295" style="color: #000000;">Initial : 
	 <input type="text" size="3">MB
	 &nbsp;Maximum : 
	 <input type="text" size="3">MB 
	 </td>
  </tr>
</table>
</td>
</tr>  
  <tr>
  	  <td>
<table border="0" width="595" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Operating System Details</td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Operating System : </td>
     <td align="left" width="295">
	 <select>
      <option selected>Windows</option>
      <option>UNIX</option>
    </select>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Operating System Version : </td>
     <td align="left" width="295">
 	 <select name="" onChange="document.getElementById('cbServicePack').disabled = false;">
 	   <option selected>Windows NT</option>
       <option>Windows 7</option>
       <option>Windows Server 2003</option>
       <option>Windows Server 2008</option>
     </select>
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Service Pack (if applicable) : </td>
     <td align="left" width="295">
	 <select name="cbServicePack" id="cbServicePack" disabled="true">
      <option selected>&nbsp;</option>
	  <option>Service Pack 1</option>
      <option>Service Pack 3</option>
    </select>
	 </td>
  </tr>
</table>
	  </td>
  </tr>
	<tr>
		<td>
<table border="0" width="595" cellspacing="5" cellpadding="5">
  <tr>
     <td colspan="2" align="center" style="color: #000000; text-decoration: underline;">Software Details</td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Software Platform : </td>
     <td align="left" width="295">
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="Java">Java</option>
        <option value="dotNet">dotNet</option>
        <option value="dotNet">Siebel</option>
        <option value="dotNet">Telecom</option>
      </select>
	  &nbsp;Version : 
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="Java">1.5</option>
        <option value="dotNet">1.6</option>
        <option value="dotNet">1.7</option>
        <option value="dotNet">1.8</option>
      </select>	 
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Middleware : </td>
     <td align="left" width="295">
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="Jboss">Jboss</option>
        <option value="Tomcat">Tomcat</option>
        <option value="WebLogic">WebLogic</option>
        <option value="WebSphere">WebSphere</option>
        <option value="TIBCO">TIBCO</option>
      </select>	 
	  &nbsp;Version : 
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
      </select>	 
	  &nbsp;
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="7.0.0">7.0.0</option>
        <option value="7.0.1">7.0.1</option>
        <option value="7.0.2">7.0.2</option>
        <option value="7.1.0">7.1.0</option>
        <option value="7.1.1">7.1.1</option>
      </select>	 
	 </td>
  </tr>
  <tr>
     <td align="right" width="295" style="color: #000000;">Database : </td>
     <td align="left" width="295">
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="MySql">MySql</option>
        <option value="Postgres">Postgres</option>
        <option value="Oracle">Oracle</option>
        <option value="SQL Server">SQL Server</option>
        <option value="Sybase">Sybase</option>
      </select>	 
	  &nbsp;Version : 
      <select name="">
	  	<option value="">&nbsp;</option>  
        <option value="5.7">5.7</option>
        <option value="5.6">5.6</option>
        <option value="5.5">5.5</option>
        <option value="5.4">5.4</option>
        <option value="5.3">5.3</option>
        <option value="5.2">5.2</option>
        <option value="5.1">5.1</option>
        <option value="5.0">5.0</option>
        <option value="4.0">4.0</option>
      </select>	 
	 </td>
  </tr>
</table>
		</td>
	</tr>
</table>
<table border="0" width="1200" cellspacing="5" cellpadding="5">
  <tr>
  	  <td colspan="2" align="center"><input type="submit" name="submit" value="Submit"></td>
  </tr>
</table>
</form:form>
<jsp:include page="Footer.jsp" />
</body>
</html>