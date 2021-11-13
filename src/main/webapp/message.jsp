<%--
Created by IntelliJ IDEA.
User: Abmcar
Date: 2021/11/11
Time: 15:37
To change this template use File | Settings | File Templates.
--%>
<% Object title = (String) request.getAttribute("title"); %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=title%>
    </title>
    <link rel="stylesheet" href="layui/css/styles.css" type="text/css">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
</head>
<body>
<ul class="layui-nav" lay-filter="">
    <li class="layui-nav-item"><a href="http://ranking.abmcar.top"><img src="ICPC.jpg" class="layui-nav-img">NYIST_ACM
        Ranking List</a></li>
    <li class="layui-nav-item"><a href="http://ranking.abmcar.top">榜单</a></li>
    <li class="layui-nav-item"><a
            href="http://www.abmcar.top:8080/RankingWeb/form.html">信息填写</a></li>
    <li class="layui-nav-item"><a href="http://www.abmcar.top/archives/nyistacmrankinglistfaq">榜单FAQ</a></li>
    <li class="layui-nav-item"><a href="https://github.com/abmcar/RankingWeb/issues">问题反馈</a></li>
    <li class="layui-nav-item"><a>快捷提示</a>
        <dl class="layui-nav-child">
            <dd><a href="">按CTRL + F5可以清除缓存以看到最新榜单</a></dd>
            <dd><a href="">如果没有填某个oj的id,会默认按照昵称来爬取题数</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item layui-this"><a>我的信息</a>
        <dl class="layui-nav-child">
            <dd><a href="login.jsp">登录</a></dd>
            <dd><a href="register.jsp">注册</a></dd>
        </dl>
    </li>
</ul>
<%
    String info = (String) request.getAttribute("info");
%>
<h3><%=info%></h3>
<a href="http://ranking.abmcar.top/">返回榜单</a>
</body>
</html>
