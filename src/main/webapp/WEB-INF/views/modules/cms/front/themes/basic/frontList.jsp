<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>${article.title} - ${category.name}</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="${article.description} ${category.description}"/>
    <meta name="keywords" content="${article.keywords} ${category.keywords}"/>
    <script type="text/javascript">
        $(document).ready(function () {
            if ("${category.allowComment}" == "1" && "${article.articleData.allowComment}" == "1") {
                $("#comment").show();
                page(1);
            }
        });

        function page(n, s) {
            $.get("${ctx}/comment", {
                theme: '${site.theme}',
                'category.id': '${category.id}',
                contentId: '${article.id}',
                title: '${article.title}',
                pageNo: n,
                pageSize: s,
                date: new Date().getTime()
            }, function (data) {
                $("#comment").html(data);
            });
        }
    </script>
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
        <div class="span2">
            <h4>栏目列表</h4>
            <ol>
                <cms:frontCategoryList categoryList="${categoryList}"/>
            </ol>
            <h4>推荐阅读</h4>
            <ol>
                <cms:frontArticleHitsTop category="${category}"/>
            </ol>
        </div>
        <div class="span10" style="width: 70%">
            <ul class="breadcrumb">
                <cms:frontCurrentPosition category="${category}"/>
            </ul>
        </div>

        <div class="span10" style="width: 70%">
            <%--	     <div class="row">--%>
                <div class="span10" style="width: 95%">
                    <h3 style="color:#555555;font-size:20px;text-align:center;border-bottom:1px solid #ddd;padding-bottom:15px;margin:25px 0;">${trueArticle.title}</h3>
                    <c:if test="${not empty trueArticle.description}">
                        <div>摘要：${trueArticle.description}</div>
                    </c:if>
                    <div>${trueArticle.articleData.content}</div>
                    <div style="border-top:1px solid #ddd;padding:10px;margin:25px 0;">发布者：${trueArticle.user.name} &nbsp;
                        点击数：${trueArticle.hits} &nbsp; 发布时间：<fmt:formatDate value="${trueArticle.createDate}"
                                                                        pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp;
                        更新时间：<fmt:formatDate value="${trueArticle.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                </div>
            <%--  	     </div>--%>
            <div class="row">
                <div id="comment" class="hide span10">
                    正在加载评论...
                </div>
            </div>

            <div class="span10" style="width: 98%">
                <h5>相关文章</h5>
                <ol><c:forEach items="${relationList}" var="relation">
                    <li style="float:left;width:230px;"><a
                            href="${ctx}/view-${relation[0]}-${relation[1]}${urlSuffix}">${fns:abbr(relation[2],30)}</a>
                    </li>
                </c:forEach></ol>
            </div>
        </div>
    </div>
</section>
</body>
</html>