<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>show</title>
</head>
<body>
<c:forEach items="${student}" var="st">
    <a href="del/${st.id}.html">删除</a>　 ${st.id}、${st.name}<br>
</c:forEach>
</body>
</html>