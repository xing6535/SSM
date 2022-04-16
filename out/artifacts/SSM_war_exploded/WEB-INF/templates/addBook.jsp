<%--
  Created by IntelliJ IDEA.
  User: 92345
  Date: 2022/4/12
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍界面</title>
</head>
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" align="center">
                <h1>
                    <small>添加书籍</small>
                </h1>
            </div>
        </div>
    </div>

</div>

<form action="${pageContext.request.contextPath}/addBook" method="post">
    <table>
        <tr>
            <td>书籍名称：</td>
            <td><input type="text" class="form-control" name="bookName" required></td>
        </tr>
        <tr>
            <td>书籍数量：</td>
            <td><input type="text" class="form-control" name="bookCounts" required></td>
        </tr>
        <tr>
            <td>书籍细节：</td>
            <td><input type="text" class="form-control" name="detail" required></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="submit" class="btn btn-default">Submit</button>
            </td>
        </tr>
    </table>


</form>
</body>
</html>
