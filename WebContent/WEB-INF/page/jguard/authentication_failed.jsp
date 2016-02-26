<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="html" uri="/WEB-INF/tld/struts-html.tld"%>
<%@ taglib prefix="bean" uri="/WEB-INF/tld/struts-bean.tld"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
	<title><bean:message key="authentication_failed.jsp.title"/></title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F1F8FC;
}
</style>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
	<link rel="icon" href="favicon.ico" type="image/x-icon"/>
	<script language="javascript" event="onkeydown" for="document">	
		if(event.keyCode==13){  
			document.all('loginAgain').focus();  
		}
	</script>
	<script language="javascript">	
	function doLoginAgain(){
		window.parent.location.href='<%= request.getContextPath()%>/Logoff.do';
	}
	</script>
</head>
<body>	
		<div>
			<div id="content"></div>
			<div id="content"></div>
			<div id="content"></div>
			<div id="content"></div>
			<div id="main">				
				<table align="left">
							<tr>
								<td width="20%"></td>
								<td align="left" width="80%">				
									<img src="images/bankofchina_LOGO.gif" border="0"/>									
								</td>
							</tr>
						</table>				
				<div id="content">
					<div id="query">						
						<table>							
							<tr>
								<td>
									<b>
										
									</b>
								</td>
								<td>&nbsp;&nbsp;</td>
							</tr>
							<tr>
								<td align="right" width="27%">
									<b><bean:message key="common.text.errorreason"/></b>
								</td>
								<td align="left" width="73%">
									<bean:message key="authentication_failed.jsp.text.reason1"/>
								</td>
							</tr>							
							<tr>
								<td align="right" >
									&nbsp;
								</td>
								<td align="left" >
									<bean:message key="authentication_failed.jsp.text.reason2"/>
								</td>
							</tr>
							<tr>
							<td align="right">
								&nbsp;
							</td>
							<td align="left">
								<bean:message key="authentication_failed.jsp.text.reason3"/>
							</td>
						</tr>
						</table>
						<table>
						<tr></tr>
							<tr>
								<td align="right" width="88%">
									&nbsp;
								</td>
								<td align="center" width="12%">
								<div>
									<input id="loginAgain" name="loginAgain" type="button" 
										value="<bean:message key="authentication_failed.jsp.button.loginagain"/>" 
										class="botton01" onclick="doLoginAgain()"/></div>
								</td>
							</tr>
						</table>						
					</div>
				</div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content"></div>
				<div id="content">
					<table align="center">
						<tr>
							<td align="right" width="70%"/>
							<td width="100%" align="right">
								<font style="font-size:11px;color:;">
									版权所有：<bean:message key="CUSTOM_NAME"/>
								</font>								
							</td>
							<td align="right" width="13%"/>
						</tr>						
					</table>
				</div>
			</div>
</body>
