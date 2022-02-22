<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <%
  	Cookie[] cs = request.getCookies();
   %>
  
  <body>
    <h1>Cookie案例</h1>

    <a href = "news.action">新闻板块</a><br/>
    <a href = "military.action">军事板块</a><br/>
    <a href = "amusement.action">娱乐板块</a><br/>
    <a href = "sports.action">体育板块</a><br/>
    <a href = "finance.action">财经板块</a><br/>
    
    你访问过的板块:
    <br/>
    <%
    for(int i = cs.length-1;i >= 0;i--){
    	if(cs[i].getName().equals("news")){
    		out.println("新闻板块" + "  " + cs[i].getValue() + "<br/>");
    	}else if(cs[i].getName().equals("military")){
    		out.println("军事板块" + "  " + cs[i].getValue() + "<br/>");
    	}else if(cs[i].getName().equals("amusement")){
    		out.println("娱乐板块" + "  " + cs[i].getValue() + "<br/>");
    	}else if(cs[i].getName().equals("sports")){
    		out.println("体育板块" + "  " + cs[i].getValue() + "<br/>");
    	}else if(cs[i].getName().equals("finance")){
    		out.println("财经板块" + "  " + cs[i].getValue() + "<br/>");
    	}
    } 
    %>
    
  </body>
</html>
