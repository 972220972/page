<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>showpage</title>
    <style>
        th,td{
            width: 200px;
            text-align: center;
        }
        <%--.page a{
            padding: 5px;
            margin: 5px;
            border: 1px solid green;
            text-decoration: none;
        }
        .page a:link{
            text-decoration:none;
            color: #000;
        }
        .page a:visited{
            text-decoration:none;
            color: #000;
        }
        .page a:hover{
            text-decoration:none;
            color: green;
        }
        .page a:active{
            text-decoration:none;
            color: #000;
        }--%>
        a:link{color:#333;text-decoration:none;}
        a:visited{color:#333;text-decoration:none;}
        a:hover{color:#1b61ff;text-decoration:underline;}
        a:active{color:#3B3B3B;}
        .page{height:30px;padding:15px 0;clear:both;overflow:hidden;text-align:center;}
        .page a{padding:5px 10px;display:inline-block;margin-right:5px;border:solid 1px #c8c7c7;}
        .page a:hover,.page a.checked{text-decoration:none;border:solid 1px #0086d6;background:#0091e3;color:#fff;}

    </style>
</head>
<body>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
    </tr>
    <c:forEach items="${student}" var="s">
        <tr>
            <td>${s.id}</td><td>${s.name}</td>
        </tr>
    </c:forEach>
    <tr>
        <td  colspan=3>
            <a href="/showpage/${p==1?1:p-1}">上一页</a>
            <c:forEach begin="1" end="${pagecount}" varStatus="pp">
                <a href="/showpage/${pp.count}">${pp.count}</a>
            </c:forEach>
            <a href="/showpage/${p==(pagecount)?pagecount:p+1}">下一页</a>
        </td>
    </tr>
</table>
<hr>
<hr>
${divs}
</body>
</html>
