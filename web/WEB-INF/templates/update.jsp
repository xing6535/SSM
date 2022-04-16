<%--
  Created by IntelliJ IDEA.
  User: 92345
  Date: 2022/4/12
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书修改页面</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>图书修改界面</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="row clearfix" align="center">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
            </tr>
            </thead>
            <tbody>
            <form action="${pageContext.request.contextPath}/updatebook" method="post">
                <input type="hidden" name="bookId" value="${Qbook.bookId}">
                <tr>
                    <td><input type="text" name="bookName" value="${Qbook.bookName}"></td>
                    <td><input type="text" name="bookCounts" value="${Qbook.bookCounts}"></td>
                    <td><input type="text" name="detail" value="${Qbook.detail}"></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <button type="submit" class="btn btn-default">修改</button>
                    </td>
                </tr>
            </form>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
