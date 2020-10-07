<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table border="1px" width="600px">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>住址</td>
            <td>Email</td>
        </tr>
        <c:forEach var="item" items="${list}">
            <tr>
                <td><a href="/cha?id=${item.sid}">${item.sid}</a></td>
                <td>${item.sname}</td>
                <td>${item.sgender}</td>
                <td>${item.sage}</td>
                <td>${item.saddress}</td>
                <td>${item.semail}</td>
            </tr>
        </c:forEach>

    </table>

</body>
</html>
