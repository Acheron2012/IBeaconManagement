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
<div class="div_from_aoto" style="width: 500px;">
    <FORM action="entry?type=3" method="post">
    	<DIV class="control-group">
            <LABEL class="laber_from">学生</LABEL>
            <DIV  class="controls" >
                <SELECT class="input_select" name="var1">
                <c:forEach items="${liststudent}" var="a">
                    <OPTION value="${a.id}">${a.var1}</OPTION>
                </c:forEach>
                </SELECT>
            </DIV>
        </DIV>
        <DIV class="control-group">
            <label class="laber_from">时间</label>
            <DIV  class="controls" ><INPUT class="input_from" name="var2" type=text placeholder=" 列:2016-12-10" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">备注</LABEL>
            <DIV  class="controls" ><textarea class="input_from" name="var3" placeholder=" 请输入外出事由" required style="width:200px;"></textarea><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><button type="submit" class="btn btn-success" style="width:120px;" >确认</button></DIV>
        </DIV>
    </FORM>
</div>
</body>
</html>