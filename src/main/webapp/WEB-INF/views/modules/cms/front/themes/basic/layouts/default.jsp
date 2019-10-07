<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
    <title><sitemesh:title default="欢迎访问"/> - ${site.title} - Powered By JeeSite</title>
    <%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
    <!-- Baidu tongji analytics -->
    <script>var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();</script>
    <sitemesh:head/>
    <style>
        .home-header-menu-ar {
            width: 100%;
            height: 40px;
            float: left;
            margin-left: 6px;
            margin-bottom: 10px;
        }

        .home-header-menu {
            width: 1280px;
            margin: 0 auto;
            height: 40px;
        }

        .header-logo-ar-bg {
            width: 100%;
            height: 90px;
        }

        .header-logo-ar {
            width: 1280px;
            margin: 0 auto;
        }

        .header {
            width: 100%;
        }


        a {
            color: #808080;
            text-decoration: none;
            outline: none;
        }

        a:link {
            color: #808080;
            text-decoration: none;
            outline: none;
        }

        a:visited {
            color: #808080;
            text-decoration: none;
        }

        a:hover {
            color: #E30303;
            text-decoration: none;
        }

        a:active {
            color: #E30303;
            text-decoration: none;
        }

        ul, li {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .pull-right {
            float: right;
        }

        .pull-left {
            float: left;
        }

        .it28 {
            font-size: 28px !important;
        }

        .it-bold {
            font-weight: bold;
        }

        .header {
            width: 100%;
        }

        .header-logo-ar-bg {
            width: 100%;
            height: 90px;
        }

        .header-logo-ar {
            width: 1280px;
            margin: 0 auto;
        }

        .header-logo-ar .logo {
            width: 80%;
            margin: 16px 0;
            float: left;
        }

        .header-logo-ar .logo img {
            max-height: 80px;
        }

        .header-logo-ar .logo-text {
            margin-left: 20px;
        }

        .logo-big-title {
            color: #333333;
        }

        .logo-small-title {
            color: #808080;
        }

        .home-header-menu-ar {
            width: 100%;
            height: 40px;
            float: left;
            margin-left: 6px;
            margin-bottom: 10px;
        }

        .home-header-menu-ar ul {
            width: 100%;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .home-header-menu-ar ul li {
            float: left;
            display: inline-block;
            line-height: 14px;
            text-align: center;
            margin-right: 5px;
            list-style: none;
            color: #333333;
            border: 1px solid #e3e3e3;
            width: 154px;
            height: 38px;
            line-height: 38px;
            transform: skew(-18deg);
            /*设置倾斜度为-30*/
            -webkit-transform: skew(-18deg);
            -moz-transform: skew(-18deg);
            -o-transform: skew(-18deg);
            -ms-transform: skew(-18deg);
            background-color: #fff;
        }

        .home-header-menu-ar ul li a {
            width: 100%;
            display: inline-block;
            color: #333333;
        }

        .home-header-menu-ar ul li a:hover {
            width: 100%;
            display: inline-block;
            color: #fff;
            background-color: #279EF2;
        }

        .home-header-menu-ar ul li span {
            width: 100%;
            display: inline-block;
            -webkit-transform: skew(18deg);
            -moz-transform: skew(18deg);
            -o-transform: skew(18deg);
            -ms-transform: skew(18deg);
        }


        .home-header-banner img {
            width: 1280px;
            height: 320px;
            overflow: hidden;
        }

        .header-menu-ar ul {
            width: 100%;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .header-menu-ar ul li {
            float: left;
            display: inline-block;
            width: 12.5%;
            line-height: 40px;
            text-align: center;
            margin: 0;
            padding: 0;
            list-style: none;
            color: #fff;
        }

        .header-menu-ar ul li a {
            float: left;
            width: 100%;
            display: inline-block;
            color: #fff;
        }

        .header-menu-ar ul li a:hover {
            float: left;
            width: 100%;
            display: inline-block;
            background-color: #279EF2;
        }


        /*.container {*/
        /*    width: auto;*/
        /*}*/


        /*.container-content-left-pic img {*/
        /*    width: 160px;*/
        /*    height: 160px;*/
        /*    border-radius: 100%;*/
        /*    border: 1px solid #E8800C;*/
        /*}*/


        /*.container-content-left-info span {*/
        /*    display: block;*/
        /*}*/


        .teacher-name-text a {
            color: #333333;
        }

        .teacher-list-ar ul {
            width: 100%;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .teacher-list-ar li {
            width: 20%;
            float: left;
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
            color: #333333;
        }

        .teacher-list-ar li a {
            color: #1C87EA;
        }

        .teacher-list-ar li a:hover {
            color: #1C87EA;
        }

        .teacher-list-ar li img {
            width: 140px;
            height: 140px;
            border-radius: 100%;
            border: 2px solid #ff6600;
        }


        /*.container-content-news-list ul {*/
        /*    width: 100%;*/
        /*    margin: 0;*/
        /*    padding: 0;*/
        /*    list-style: none;*/
        /*}*/

        /*.container-content-news-list ul li {*/
        /*    width: 100%;*/
        /*    margin: 0;*/
        /*    padding: 0;*/
        /*    list-style: none;*/
        /*    line-height: 2.2;*/
        /*    white-space: nowrap;*/
        /*    overflow: hidden;*/
        /*    text-overflow: ellipsis;*/
        /*}*/


        .team-list-ar ul {
            width: 100%;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .team-list-ar li {
            width: 25%;
            float: left;
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
            margin-bottom: 5px;
        }

        .team-list-ar li img {
            width: 300px;
            height: 233px;
            border: 1px solid #b3b3b3;
        }

        .team-list-ar li a {
            color: #333333;
        }

        .team-list-ar li a:hover {
            color: #279EF2;
        }


        .link-list-ar ul {
            width: 100%;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .link-list-ar li {
            width: 32%;
            float: left;
            list-style: none;
            margin: 0;
            text-align: left;
            padding-bottom: 5px;
            margin-right: 1%;
            border-right: 1px solid #e3e3e3;
            white-space: nowrap;
            overflow: hidden;
            -ms-text-overflow: ellipsis;
            text-overflow: ellipsis;
        }

        .link-list-ar li:nth-child(3n) {
            border-right: 0;
        }

        .nav-p .active a,
        .nav-p .active a:hover {
            color: #ffffff;
            background-color: #0088cc;
        }

        .footer-bottom-new {
            float: left;
            width: 100%;
            text-align: center;
            font-size: 13px;
            line-height: 36px;
            height: 36px;
            color: #b3b3b3;
            background: #4d4d4d;
            margin-top: 15px;
        }

    </style>
</head>
<body>
<div class="navbar navbar-fixed-top" style="position:static;margin-bottom:10px;">
    <header class="header">
        <div>
            <div>
                <div class="header-logo-ar-bg">
                    <div class="header-logo-ar">
                        <div class="logo">
                            <img src="${ctxImage}/static/images/timg.jfif" class="pull-left"/>
                            <div class="logo-text pull-left">
                                <span class="logo-big-title it28 it-bold">厦门大学周锐课题组</span><br>
                                <span class="logo-small-title">金属有机化学、有机合成方法学</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="home-header-menu">
                    <div class="home-header-menu-ar">
                        <ul id="main_nav" class=" nav-p">
                            <li class="${not empty isIndex && isIndex ? 'active' : ''}"><a
                                    href="${ctx}/index-1${fns:getUrlSuffix()}"><span>${site.id eq '1'?'首　 页':'返回主站'}</span></a>
                            </li>
                            <c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if
                                    test="${status.index lt 6}">
                                <c:set var="menuCategoryId" value=",${category.id},"/>
                                <li class="${requestScope.category.id eq category.id||fn:indexOf(requestScope.category.parentIds,menuCategoryId) ge 1?'active':''}">
                                    <a href="${category.url}" target="${category.target}"><span>${category.name}</span></a>
                                </li>
                            </c:if></c:forEach>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>
    </header>
</div>

<div class="container" style="width: 95%">
    <div class="content">
        <sitemesh:body/>
    </div>
    <hr style="margin:20px 0 10px;">
    <footer>
        <div class="footer_nav"><a href="${ctx}/guestbook" target="_blank">公共留言</a> | <a href="${ctx}/search"
                                                                                         target="_blank">全站搜索</a> | <a
                href="${ctx}/map-${site.id}${fns:getUrlSuffix()}" target="_blank">站点地图</a> | <a
                href="https://www.baidu.com">技术支持</a> | <a
                href="${pageContext.request.contextPath}${fns:getAdminPath()}" target="_blank">后台管理</a></div>
        <%--        <div class="pull-right">${fns:getDate('yyyy年MM月dd日 E')}</div>--%>
        <%--        <div class="copyright">${site.copyright}</div>--%>
        <%--        --%>
        <div>
            <div class="footer-bottom-new">
                <span>Copyright ? 2014-2018 厦门大学 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span>
            <a href="#" target="_blank">京ICP备11026495-2号</a> &nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="#"
                                                                                        style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                    <img src="images/beian.png" style="float:left;">京公网安备 11010802027423号
            </a>
        </span>
            </div>
        </div>

    </footer>
</div> <!-- /container -->
</body>
</html>