<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>${category.name}</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="${category.description}"/>
    <meta name="keywords" content="${category.keywords}"/>
    <style>
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
        .container {
            width: 100%;
        }
    </style>
</head>
<body>
<section class="container">
<div style="margin-left:5%">
    <div class="span2" style="width: 10%;height: 30em">
        <h4>栏目列表</h4>
        <ol>
            <cms:frontCategoryList categoryList="${categoryList}"/>
        </ol>
        <h4>推荐阅读</h4>
        <ol>
            <cms:frontArticleHitsTop category="${category}"/>
        </ol>
    </div>
    <div class="span10"style="width: 70%">
        <ul class="breadcrumb">
            <cms:frontCurrentPosition category="${category}"/>
        </ul>
    </div>
    <div class="span10"style="width: 70%">
        <c:set var="index" value="1"/>
        <c:forEach items="${categoryList}" var="tpl">
            <c:if test="${tpl.inList eq '1' && tpl.module ne ''}">
                <c:set var="index" value="${index+1}"/>
                ${index % 2 eq 0 ? '<div class="row">':''}
                <div class="span5">
                    <h4>
                        <small><a href="${ctx}/list-${tpl.id}${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
                            ${tpl.name}</h4>
                    <c:if test="${tpl.module eq 'article'}">
                        <ul><c:forEach items="${fnc:getArticleList(site.id, tpl.id,1, 5, '')}" var="article">
                            <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}"
                                                                         pattern="yyyy.MM.dd"/></span><a
                                    href="${ctx}/view-${article.category.id}-${article.id}${urlSuffix}"
                                    style="color:${article.color}">${fns:abbr(article.title,40)}</a></li>
                        </c:forEach></ul>
                    </c:if>
                    <c:if test="${tpl.module eq 'link'}">
                        <ul><c:forEach items="${fnc:getLinkList(site.id, tpl.id, 5, '')}" var="link">
                            <li><span class="pull-right"><fmt:formatDate value="${link.updateDate}"
                                                                         pattern="yyyy.MM.dd"/></span><a target="_blank"
                                                                                                         href="${link.href}"
                                                                                                         style="color:${link.color}">${fns:abbr(link.title,40)}</a>
                            </li>
                        </c:forEach></ul>
                    </c:if>
                </div>
                ${index % 2 ne 0 ? '</div>':''}
            </c:if>
        </c:forEach>
    </div>
</div>
</section>
</body>
</html>