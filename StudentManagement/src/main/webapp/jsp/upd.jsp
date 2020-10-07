<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/upd?id=${stu.sid}" method="post">
    <table border="1px">
        <tr>
            <td colspan="2" style="text-align: center; font-size: 30px;">学员信息</td>
        </tr>

        <tr>
            <td>姓名:</td>
            <td><input type="text" name="sname" value="${stu.sname}" /></td>
        </tr>

        <tr>
            <td>年龄:</td>
            <td><input type="text" name="sage" value="${stu.sage}" /></td>
        </tr>

        <tr>
            <td>性别:</td>
            <td><input type="text" name="sgender" value="${stu.sgender}" /></td>
        </tr>

        <tr>
            <td>家庭住址:</td>
            <td><input type="text" name="saddress" value="${stu.saddress}" /></td>
        </tr>

        <tr>
            <td>Email:</td>
            <td><input type="text" name="semail" value="${stu.semail}" /></td>
        </tr>


        <tr>
            <td colspan="2" style="text-align: center"><input type="submit" value="修改" /><input type="reset" value="重置" /></td>
        </tr>
    </table>
</form>


</body>
</html>
