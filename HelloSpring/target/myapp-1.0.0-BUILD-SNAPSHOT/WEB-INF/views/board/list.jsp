<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  (boardList)
</h1>

<P>  The time on the server is ${serverTime}. </P>
<img src="./img/flowerjpeg" width="500">
<table>
<c:forEach items="${list}" var="one">
<tr>
	<td>${one }</td>
</c:forEach>

</table>
</body>
</html>
