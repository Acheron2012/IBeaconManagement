<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String url="main.jsp";
if(request.getSession().getAttribute("user")!=null){
	url="apartment?type=1";
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>IBeacon应用管理系统</title>
	<link rel="stylesheet" href="/css/index.css" type="text/css" media="screen" />
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/js/tendina.min.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
</head>
<body>
    <!--顶部-->
    <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">IBeacon应用管理系统</span></div>
            <div id="ad_setting" class="ad_setting">
                <a class="ad_setting_a" href="javascript:; ">
                    <i class="icon-user glyph-icon" style="font-size: 20px"></i>
                    <span>管理员</span>
                    <i class="icon-chevron-down glyph-icon"></i>
                </a>
                <form action="user?type=4" id="uform" method="post">
                <ul class="dropdown-menu-uu" style="display: none" id="ad_setting_ul">
                    <li class="ad_setting_ul_li" onclick="javascript:$('#uform').submit();"> <a href="javascript:;"><i class="icon-signout glyph-icon"></i> <span class="font-bold">退出</span> </a> </li>
                </ul>
                </form>
            </div>
    </div>
    <!--顶部结束-->
    <!--菜单-->
    <div class="layout_left_menu">
        <ul id="menu">
            <li class="childUlLi">
               <a href="main.jsp"  target="menuFrame"><i class="glyph-icon icon-home"></i>用户管理</a>
                <ul>
                    <li><a href="user1.jsp" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>用户添加</a></li>
                    <li><a href="user?type=2" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>查询用户</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="user.html"  target="menuFrame"> <i class="glyph-icon icon-reorder"></i>公寓管理</a>
                <ul>
                    <li><a href="javascript:show('apartment?type=1')"><i class="glyph-icon icon-chevron-right"></i>查询公寓</a></li>
                    <li><a href="javascript:show('apartment?type=2')"><i class="glyph-icon icon-chevron-right"></i>公寓财产</a></li>
                    <li><a href="javascript:show('apartment3.jsp')"><i class="glyph-icon icon-chevron-right"></i>添加公寓</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="role.html" target="menuFrame"> <i class="glyph-icon icon-reorder"></i>学生管理</a>
                <ul>
                    <li><a href="javascript:show('student?type=1')"><i class="glyph-icon icon-chevron-right"></i>学生查询</a></li>
                    <li><a href="javascript:show('student?type=2')"><i class="glyph-icon icon-chevron-right"></i>学生入住</a></li>
                </ul>
            </li>
            <li class="childUlLi">
                <a href="#"> <i class="glyph-icon  icon-location-arrow"></i>出入登记</a>
                <ul>
                    <li><a href="javascript:show('entry?type=1')" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>出入查询</a></li>
                    <li><a href="javascript:show('entry?type=2')" target="menuFrame"><i class="glyph-icon icon-chevron-right"></i>添加外出</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!--菜单-->
    <div id="layout_right_content" class="layout_right_content">

        <div class="route_bg">
            <a href="#">主页</a><i class="glyph-icon icon-chevron-right"></i>
            <a href="#">菜单管理</a>
        </div>
        <div class="mian_content">
            <div id="page_content">
                <iframe id="menuFrame" name="menuFrame" src="<%=url%>" style="overflow:visible;"
                        scrolling="yes"  frameborder="0" width="100%" height="100%"></iframe>
            </div>
        </div>
    </div>
    <div class="layout_footer">
        <p>Copyright © 2017 - 中国科学院计算技术研究所传感器网络实验室</p>
    </div>
</body>
<script type="text/javascript">
function show(url){
	$("#menuFrame").attr("src",url);
}
</script>
</html>