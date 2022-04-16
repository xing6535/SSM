<%--
  Created by IntelliJ IDEA.
  User: 92345
  Date: 2022/4/12
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>根据图书名字查询图书信息页面</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>查询得到的书籍结果为</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-4 column">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/toaddBook">新增书籍</a>

        <a class="btn btn-primary" href="${pageContext.request.contextPath}/hello">显示全部书籍</a>
    </div>
</div>

<div class="row clearfix" align="center">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
            </tr>
            </thead>

            <tbody>
                <tr>
                    <td>${Qbook.bookId}</td>
                    <td>${Qbook.bookName}</td>
                    <td>${Qbook.bookCounts}</td>
                    <td>${Qbook.detail}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
