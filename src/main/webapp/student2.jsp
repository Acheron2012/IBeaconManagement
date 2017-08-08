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
    <FORM action="student?type=3" method="post">
    	<DIV class="control-group">
            <LABEL class="laber_from">学生</LABEL>
            <DIV  class="controls" >
                <SELECT class="input_select" name="var4" style="width:130px;">
                <c:forEach items="${listapartment}" var="a">
                    <OPTION value="${a.id}">${a.var1}号公寓${a.var2}室</OPTION>
                </c:forEach>
                </SELECT>
            </DIV>
        </DIV>
        <DIV class="control-group">
            <label class="laber_from">姓名</label>
            <DIV  class="controls" ><INPUT class="input_from" name="var1" type=text placeholder=" 请输入姓名" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">电话</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var2" type=text placeholder=" 请输入电话" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from">身份证</LABEL>
            <DIV  class="controls" ><INPUT class="input_from" name="var3" type=text placeholder=" 请输入身份证" required><P class=help-block></P></DIV>
        </DIV>
        <DIV class="control-group">
            <LABEL class="laber_from" ></LABEL>
            <DIV class="controls" ><button type="submit" class="btn btn-success" style="width:120px;" >确认</button></DIV>
        </DIV>
    </FORM>
</div>
</body>
</html>