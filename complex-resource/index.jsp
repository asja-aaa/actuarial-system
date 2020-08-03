<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h3>
    <a href="${path }/controller/首页">首页</a>
    <a href="${path }/customer/customerIndex">员工</a>
    <a href="${path }/controller/部门经理">部门经理</a>
    <a href="${path }/controller/买方老板">买方老板</a>
    <a href="${path }/controller/买方财务人员">买方财务人员</a>
    <a href="${path }/controller/买方管理人员">买方管理人员</a>
    <a href="${path }/controller/卖方销售人员">卖方销售人员</a>
    <a href="${path }/controller/卖方管理人员">卖方管理人员</a>
    <a href="${path }/controller/卖方财务人员">卖方财务人员</a>
</h3>
</body>
</html>