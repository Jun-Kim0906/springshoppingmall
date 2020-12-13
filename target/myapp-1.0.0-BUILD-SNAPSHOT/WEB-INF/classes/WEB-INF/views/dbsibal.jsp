<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>
<body>
<table id="list" width="90%">
<tr>
	<th>pid</th>
	<th>uid</th>
	<th>regdate</th>
	<th>thumbsup</th>
	<th>name</th>
	<th>price</th>
	<th>content</th>
	<th>content</th>
	
</tr>

	<c:forEach items="${testlist}" var="u">
	<br>
		<tr>
			<td>${u.getPid()}</td>
			<td>${u.getUid()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getThumbsup()}</td>
			<td>${u.getName()}</td>
			<td>${u.getPrice()}</td>
			<td>${u.getContent()}</td>
			<td>${u.getPhoto()}</td>
			
		</tr>
	</c:forEach>
	<c:forEach items="${aaa}" var="x">
		<h2>${x}</h2>
	</c:forEach>
</body>
</html>