<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<% String contextPath = request.getContextPath(); %>
	<meta charset="utf-8">
    <meta name="Description" content="Test Environment Request Application">
    <meta name="author" content="Mahesh Kumar Palaniswamy">
    <meta name="Copyright" content="Copyright @ Tech Mahindra 2014.">
    <title>Test Environment Request Application : Invalid Credentials Page</title>
    <link rel="stylesheet" href="<%=contextPath%>/resources/stylesheets/tera.css" />
    <script language="javascript" type="text/javascript" src="<%=contextPath%>/resources/javascripts/tera.js"></script>
</head>

<body>
<table border="0" width="1200">
  <jsp:include page="HeaderForLogin.jsp" />
  <tr>
     <td>&nbsp;</td>
  </tr>
  <tr>
     <td>&nbsp;</td>
  </tr>
  <tr>
     <td>
      <table border="0" width="100%">
        <tr>
           <td><font color="#000000" style="font-weight: bold;">Test Environment Request Application.</font></td>
        </tr>
        <tr>
    		<td>&nbsp;</td>
 		</tr>
        <tr>
           <td><font color="#000000" style="font-weight: bold;">You have entered invalid Credentials.</font></td>
        </tr>
        <tr>
    		<td>&nbsp;</td>
 		</tr>
        <tr>
           <td><font color="#000000" style="font-weight: bold;">Please Re-login</font></td>
        </tr>
      </table>	 
	 </td>
  </tr>
  <tr>
     <td>&nbsp;</td>
  </tr>
  <tr>
     <td>&nbsp;</td>
  </tr>
 </table>
 
 <section id="mainRight" class="clear">
    	<form:form name="loginForm" id="loginForm" method="post" action="login" modelAttribute="UserBean" onsubmit="return validateForm()">
			<table align="center" width="300" border="0"  cellspacing="5" cellpadding="5">
              <tr>
                 <td align="right">Login Id : </td>
                 <td align="left"><form:input type="text" path="loginId" length="20" name="loginId"/></td>
              </tr>
              <tr>
                 <td align="right">Password : </td>
                 <td align="left"><form:input type="password" path="password" length="20" name="password"/></td>
              </tr>
              <tr>
                 <td colspan="2" align="center"><input type="submit" value="Login" ></td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
              <tr>
                 <td>&nbsp;</td>
              </tr>
            </table>
        </form:form>
	<jsp:include page="Footer.jsp" />
    </section>

</body>
</html>