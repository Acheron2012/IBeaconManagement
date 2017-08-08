<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
if(request.getSession().getAttribute("user")==null){
	response.sendRedirect("main.jsp");
}
%>
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
    <FORM action="apartment?type=3" method="post">
        <DIV class="control-group">
            <label class="laber_from">公寓楼号</label>
            <DIV  class="controls" ><INPUT class="input_from" name="var1" type=text placeholder=" 例:1" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">几室</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var2" type=text placeholder=" 例:101" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">年级</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var3" type=text placeholder=" 例:大一" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">班级</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var4" type=text placeholder=" 例:1" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">系别</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var5" type=text placeholder=" 例:计算机" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">寝室财产</LABEL>
            <DIV  class="controls" ><textarea class="input_from" name="var6" placeholder=" 例:座椅4个,扫把1个" style="width:200px;"></textarea><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><button type="submit" class="btn btn-success" style="width:120px;" >确认</button></DIV>
        </DIV>
    </FORM>
</div>
</body>
</html>