<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10413
  Date: 2020/3/7
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教授信息配置表</title>
    <style type="text/css">
        table.gridtable {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }

        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }

        table.gridtable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<form method="post" action="/chemistry/a/professor/update" enctype="multipart/form-data" style="border-width: 100px">
    <table class="gridtable">

        <tr>
            <td>照片 <input name="photo" type="file"></td>
        <tr/>
        <tr>
            <td>姓名<input name="name" type="text" value="${teacher.name}"></td>
        </tr>
        <tr>
            <td>职称<input name="title" type="text" value="${teacher.title}"></td>
        </tr>
        <tr>
            <td>简介<textarea name="synopsis" cols="70" rows="10"
                            style="vertical-align:top;outline:none;">${teacher.introduce}</textarea></td>
            <%--            <td>简介<input name="synopsis" type="text" value="${teacher.introduce}" style="height: 200px"></td>--%>
        </tr>
        <tr>
            <td>链接名称<input name="LinksName" type="text"></td>
        </tr>
        <tr>
            <td>链接地址<input name="LinksUrl" type="text"></td>
        </tr>
    </table>
    <br>
    <input value="基本信息提交" type="submit">
    <br>
    <br>
    <br>
    <span>首页链接显示</span>
    <br>
    <table class="gridtable">
        <tr>
            <td>连接名</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${links}" var="link">
            <tr>
                <td>"${link.name}"</td>
                <td>"${link.url}"</td>
                <td><a href="/chemistry/a/professor/delate?id=${link.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>

</form>
</body>
</html>
