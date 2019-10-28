<%--
  Created by IntelliJ IDEA.
  User: GYL
  Date: 2019/10/21
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>教授信息修改</title>
</head>
<body>
<form:form id="inputForm" modelAttribute="teacher" action="${ctx}/sys/user/save" method="post" class="form-horizontal">
    <div class="control-group">
        <label class="control-label">头像:</label>
        <div class="controls">
            <input type="hidden" id="image" name="image" value="${teacher.image}" />
            <sys:ckfinder input="image" type="thumb" uploadPath="/cms/article" selectMultiple="false"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">正文:</label>
        <div class="controls">
            <form:textarea id="content" htmlEscape="true" path="teacher.introduce" rows="4" maxlength="10" class="input-xxlarge"/>
            <sys:ckeditor replace="content" uploadPath="/cms/article" />
        </div>
    </div>

</form:form>

</body>
</html>
