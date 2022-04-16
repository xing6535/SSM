<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 92345
  Date: 2022/4/12
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello</title>
<%--    bootstrap 美化界面--%>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>书籍列表--------显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/toaddBook">新增书籍</a>

            <form action="${pageContext.request.contextPath}/toQueryBookByNamePage" method="post" style="float: right">
                <span style="color: red; font-weight: bold">${msg}</span>
                <input type="submit" value="查询" class="btn btn-primary">
                <input type="text" name="queryBookName" class="btn" placeholder="请输入要查询的书籍的名字">
            </form>
        </div>
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
                    <th>操作</th>

                </tr>
            </thead>
<%--            数据信息从数据库中查询出来，从list中遍历出来：foreach--%>
            <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/toupdatePage?id=${book.bookId}">修改</a>
                            |
                            <a href="${pageContext.request.contextPath}/deleteBook/${book.bookId}" >删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
