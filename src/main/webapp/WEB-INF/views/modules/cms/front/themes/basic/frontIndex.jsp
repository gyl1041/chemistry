<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<%--<html>--%>
<%--<head>--%>
<%--	<title>首页</title>--%>
<%--	<meta name="decorator" content="cms_default_${site.theme}"/>--%>
<%--	<meta name="description" content="JeeSite ${site.description}" />--%>
<%--	<meta name="keywords" content="JeeSite ${site.keywords}" />--%>
<%--</head>--%>
<%--<body>--%>
<%--    <div class="hero-unit" style="padding-bottom:35px;margin:10px 0;">--%>
<%--      <c:set var="article" value="${fnc:getArticle('2')}"/>--%>
<%--      <h1>${fns:abbr(article.title,28)}</h1><p></p>--%>
<%--      <p>${fns:abbr(fns:replaceHtml(article.articleData.content),260)}</p>--%>
<%--      <p><a href="${article.url}" class="btn btn-primary btn-large">&nbsp;&nbsp;&nbsp;查看 &raquo;&nbsp;&nbsp;&nbsp;</a></p>--%>

<%--    </div>--%>
<%--    <div class="row">--%>

<%--      <div class="span4">--%>
<%--        <h4> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>质量监督</h4>--%>
<%--		<ul><c:forEach items="${fnc:getArticleList(site.id, 6, 8, '')}" var="article">--%>
<%--			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>--%>
<%--		</c:forEach></ul>--%>
<%--      </div>--%>
<%--      <div class="span4">--%>
<%--        <h4><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>政策法规</h4>--%>
<%--		<ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">--%>
<%--			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>--%>
<%--		</c:forEach></ul>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--</body>--%>
<%--</html>--%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="JeeSite ${site.description}"/>
    <meta name="keywords" content="JeeSite ${site.keywords}"/>
    <title>首页</title>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        html {
            font-family: sans-serif;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }

        body {
            font-size: 16px;
            line-height: 1.7;
            color: #808080;
            margin: 0;
            font-family: "微软雅黑", "黑体";
            background: #fff;
            -moz-box-sizing: border-box; /*Firefox3.5+*/
            -webkit-box-sizing: border-box; /*Safari3.2+*/
            -o-box-sizing: border-box; /*Opera9.6*/
            -ms-box-sizing: border-box; /*IE8*/
            box-sizing: border-box; /*W3C标准(IE9+，Safari5.1+,Chrome10.0+,Opera10.6+都符合box-sizing的w3c标准语法)*/
        }

        img {
            border: 0;
            -ms-interpolation-mode: bicubic;
            margin: 0;
            padding: 0;
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

        .clear-float {
            clear: both;
            height: 0;
            font-size: 0px;
            line-height: 0px;
            OVERFLOW: hidden;
            padding: 0;
            margin: 0;
            border: 0;
        }

        .it28 {
            font-size: 28px !important;
        }

        .it-bold {
            font-weight: bold;
        }

        .text-edd-2 {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            line-height: 26px;
            height: 52px;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }

        .header {
            width: 100%;
        }

        /*.header-line{
          width:100%;
          height:16px;
          background-color: @small-gary;
        }*/
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

        .home-header-menu-ar-active {
            float: left;
            display: inline-block;
            background-color: #279EF2 !important;
            color: #fff !important;
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

        .header-menu-ar-active {
            float: left;
            width: 100%;
            display: inline-block;
            background-color: #279EF2;
        }

        .container {
            width: 100%;
        }

        .container-first {
            width: 100%;
        }

        .container-first-ar {
            width: 1280px;
            margin: 0 auto;
            padding: 15px 0;
        }

        .container-title {
            width: 100%;
            line-height: 40px;
            border-bottom: 1px solid #e3e3e3;
        }

        .container-title-text {
            font-size: 22px;
            font-weight: bold;
            color: #279EF2;
        }

        .container-content {
            width: 100%;
            margin: 20px 0 20px 0;
        }

        .container-content-left {
            width: 190px;
            float: left;
            line-height: 2;
        }

        .container-content-left-pic {
            float: left;
        }

        .container-content-left-pic img {
            width: 160px;
            height: 160px;
            border-radius: 100%;
            border: 1px solid #E8800C;
        }

        .container-content-left-info {
            float: left;
            width: 100%;
            margin: 10px 0 25px 0;
        }

        .container-content-left-info span {
            display: block;
        }

        .teacher-name-text {
            font-size: 24px;
            font-weight: bold;
            color: #333333;
        }

        .teacher-name-text a {
            color: #333333;
        }

        .teacher-detail-info-text {
            color: #b3b3b3;
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

        .container-content-right {
            width: 1090px;
            float: left;
        }

        .container-content-right-left {
            width: 300px;
            float: left;
        }

        .container-content-right-right {
            width: 780px;
            float: left;
            margin-left: 10px;
        }

        .container-content-right-another {
            width: 50%;
            float: left;
        }

        .container-content-news-list {
            width: 100%;
            float: left;
        }

        .container-content-news-list ul {
            width: 100%;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .container-content-news-list ul li {
            width: 100%;
            margin: 0;
            padding: 0;
            list-style: none;
            line-height: 2.2;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .container-content-right-text {
            width: 100%;
            line-height: 26px;
            height: 104px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 4;
            -webkit-box-orient: vertical;
            margin-top: 16px;
        }

        .team-list-ar {
            width: 100%;
        }

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

        .link-list-ar {
            width: 100%;
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

        .footer {
            width: 100%;
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

<section class="container">
    <div class="container-first">
        <div class="container-first-ar" style="padding:0;">
            <div class="container-content">
                <div class="container-content-left">
                    <div class="container-content-left-pic">
                        <img src="${ctxImage}/static/images/userinfobig.jpg">
                    </div>
                </div>
                <div class="container-content-right">
                    <div class="container-content-right-left">
                        <div class="container-content-left-info">
                            <span class="teacher-name-text space-right10 it28">
                                周锐
                            </span>
                            <span class="teacher-detail-info-text">
                                教授&nbsp;&nbsp;博士生导师
                            </span>
                            <span>
                                金属有机化学、有机合成方法学
                            </span>
                        </div>
                    </div>
                    <div class="container-content-right-right">
                        <div class="container-content-right-text">
                            西虹市科技大学化学系教授，博士生导师，有机化学研究所研究员和副所长，结合应用基础研究，
                            瞄准国际前沿方向和国家能源战略需求的核心科学问题开展工作，同时致力于解决人类发展的重大问题
                            ，如环境、能源和人类健康等。
                        </div>
                    </div>
                </div>
                <div class="clear-float"></div>
            </div>

        </div>
    </div>

    <div class="container-first" style="background:#fafafa;">
        <div class="container-first-ar">
            <div class="container-title">
                <span class="container-title-text">研究方向</span>
                <span class="pull-right"><a href="${ctxImage}/f/list-54896a149a5d42899d5a83ac4d5ecaba.html">更多&nbsp;></a></span>
            </div>
            <div class="container-content text-edd-9">
                金属促进或催化的碳－氢键、碳－碳键以及碳－杂原子键的选择性切断与生成的方法学与规律；
                合成化学中有用的新反应、新方法、新试剂；金属促进或催化的碳－氢键、碳－碳键以及碳－
                杂原子键的选择性切断；生成的方法学与规律，实现在合成化学中有用的新反应、新方法、新
                试剂，探索新一代物质转化的途径；金属促进或催化的碳－氢键、碳－碳键以及碳－杂原子键
                的选择性切断与生成的方法学与规律，实现在合成化学中有用的新反应、新方法、新试剂，探索
                新一代物质转化的途径。
            </div>

        </div>
    </div>

    <div class="container-first">
        <div class="container-first-ar">
            <div class="container-title">
                <span class="container-title-text">课题组新闻</span>
                <span class="pull-right"><a href="${ctxImage}/f/list-aff420c07e634a4f8f9db9cbf46739eb.html">更多&nbsp;></a></span>
            </div>
            <div class="container-content" style="margin-bottom:0;">
                <div class="container-content-left" style="width:48%;margin-right:2%;border-right:1px solid #e3e3e3;">
                    <div class="container-content-news-list">
                        <ul><c:forEach items="${fnc:getArticleList(site.id, 'aff420c07e634a4f8f9db9cbf46739eb', 1,2, '')}" var="article">
                            <li><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}<span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>&nbsp;</span></a></li>
                        </c:forEach></ul>
                    </div>
                </div>
                <div class="container-content-right-another">
                    <div class="container-content-news-list">
                        <ul><c:forEach items="${fnc:getArticleList(site.id, 'aff420c07e634a4f8f9db9cbf46739eb',2, 2, '')}" var="article">
                            <li><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}<span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>&nbsp;</span></a></li>
                        </c:forEach></ul>
                    </div>
                </div>
                <div class="clear-float"></div>

            </div>
        </div>
    </div>

    <div class="container-first" style="background:#fafafa;">
        <div class="container-first-ar" style="padding-bottom: 0;">
            <div class="container-title">
                <span class="container-title-text">组内活动</span>
                <span class="pull-right"><a href="${ctxImage}/f/list-a0f9bcb5640c47f996b36671524a2aab.html">更多&nbsp;></a></span>
            </div>
            <div class="container-content">
                <div class="team-list-ar">
                    <ul><c:forEach items="${fnc:getArticleList(site.id, 'a0f9bcb5640c47f996b36671524a2aab',1, 4, '')}" var="article">
                        <li><a href="${article.url}" style="color:${article.color}"><img src="${article.image}"><br><span class="text-edd-2">${fns:abbr(article.title,28)}</span></a></li>
                    </c:forEach></ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-first">
        <div class="container-first-ar" style="padding-bottom: 10px;">
            <div class="container-title">
                <span class="container-title-text">友情链接</span>
            </div>
            <div class="container-content" style="margin-bottom:20px;">
                <div class="link-list-ar">
                    <ul>
                        <li><a href="#"> 教育部科技发展中心</a></li>
                        <li><a href="#"> 中国科学院</a></li>
                        <li><a href="#"> 中国工程院</a></li>
                        <li><a href="#"> 国家自然科学基金委</a></li>
                        <li><a href="#"> 中国知网cnki</a></li>
                        <li><a href="#"> 新东方教育</a></li>
                        <div class="clear-float"></div>
                    </ul>

                </div>
            </div>
        </div>
    </div>

</section>
<%--<footer class="footer">--%>
<%--    <div>--%>
<%--        <div class="footer-bottom-new">--%>
<%--            <span>Copyright ? 2014-2018 北京衮雪科技有限公司 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;</span>--%>
<%--            <span>--%>
<%--            <a href="#" target="_blank">京ICP备11026495-2号</a> &nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="#"--%>
<%--                                                                                        style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">--%>
<%--                    <img src="images/beian.png" style="float:left;">京公网安备 11010802027423号--%>
<%--            </a>--%>
<%--        </span>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</footer>--%>

</body>
</html>