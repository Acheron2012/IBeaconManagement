<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台</title>
<script type="text/javascript" src="/js/jquery.js"></script>
<link rel="stylesheet" href="/css/add.css" type="text/css" media="screen" />
<link rel="stylesheet" href="/utilLib/bootstrap.min.css" type="text/css" media="screen" />
</head>
<body>
<div class="table-responsive">
  <table class="table">
    <caption>公寓财产</caption>
    <thead>
      <tr>
        <th>公寓楼号</th>
        <th>室</th>
        <th>年纪</th>
        <th>班级</th>
        <th>系别</th>
        <th>财产</th>
     </tr>
    </thead>
    <tbody>
    <c:forEach items="${listapartment}" var="a">
    	<tr>
	        <td>${a.var1}</td>
	        <td>${a.var2}</td>
	        <td>${a.var3}</td>
	        <td>${a.var4}</td>
	        <td>${a.var5}</td>
	        <td>${a.var6}</td>
        </tr>
    </c:forEach>
     
    </tbody>
  </table>
</div>
</body>
</html>