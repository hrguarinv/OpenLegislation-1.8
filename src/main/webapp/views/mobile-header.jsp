<%@ page language="java" import="java.util.*, java.text.*,java.io.*,gov.nysenate.openleg.*,gov.nysenate.openleg.model.*" pageEncoding="UTF-8"%>

<%
	String appPath = request.getContextPath();
	String term = (String)request.getAttribute("term");
	String title = request.getParameter("title");
	
	if (title == null)
		title = "The New York Senate Open Legislation Service";
		
	if (term == null)
		term = "";
%>

<html>
	<head>
	<script>
				<!--
				percent_mobile_track('89984697771243267044235791550489069012');
				-->
			</script>
			<noscript>
				<img src="http://tracking.percentmobile.com/pixel/89984697771243267044235791550489069012/pixel.gif?v=271009_js" width="2" height="2" alt="" />
			</noscript>
		<title><%=title%></title>
		
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" />
		<meta name="apple-mobile-web-app-capable" content="YES">
		
		<link rel="shortcut icon" href="<%=appPath%>/img/nys_favicon_0.ico" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" media="screen" href="<%=appPath%>/style.css"/> 
		<link rel="stylesheet" type="text/css" media="screen" href="<%=appPath%>/style-mobile.css"/> 
		
		<script src="http://assets.percentmobile.com/percent_mobile.js" type="text/javascript" charset="utf-8"></script>

	</head>
	<body>  
	    <div id="navbar">
	   		<b>NY Senate Open Legislation</b>
			<form method="get" action="<%=appPath%>/search">
				Search:<input type="text" name="term" value="<%=term%>">
				<input type="submit" value="go"/><br/>	
				<input type="hidden" name="format" value="mobile"/>
				<a href="<%=appPath%>/mobile">Home</a>
				&nbsp;/&nbsp; 
				<a href="<%=appPath%>/mobile/info">Help</a>
			</form>
		</div>