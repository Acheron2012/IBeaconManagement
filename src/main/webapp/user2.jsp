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
    <caption>账号管理</caption>
    <thead>
      <tr>
        <th>编号</th>
        <th>账号</th>
        <th>密码</th>
        <th>操作</th>
     </tr>
    </thead>
    <tbody>
    <c:forEach items="${listuser}" var="a">
    	<tr>
	        <td>${a.user_id}</td>
	        <td>${a.username}</td>
	        <td>${a.password}</td>
	        <td>
	        <form action="user?type=5" method="post" id="delform">
	        	<input type="hidden" value="${a.user_id}" name="id" >
	        	<a href="javascript:$('#delform').submit();">删除</a>
	        </form>
	        </td>
        </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>