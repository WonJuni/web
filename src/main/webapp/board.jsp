
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3307/kd";
String user = "root";
String password = "kd1824java";
Connection connection = DriverManager.getConnection(url, user, password);
out.println("Nice");

Statement statement = connection.createStatement();
String sql = "SELECT * FROM BOARD_INFO";
ResultSet resultSet =  statement.executeQuery(sql);

%>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
	</tr>
<%
while(resultSet.next()){
%>
	<%="<tr>" %>
	<%= "<td>" + resultSet.getInt("BI_NUM")+"</td>" %>
	<%="<td>" + resultSet.getString("BI_TITLE")+"</td>" %>
	<%="<td>" + resultSet.getString("BI_WRITER")+"</td>"%>
	<%="<td>" + resultSet.getString("BI_CNT")+"</td>"%>
	<%="</tr>"%>
	
<%
}
%>
	<tr>
		<td>1</td>
		<td>first board</td>
		<td>Lee WonKee</td>
		<td>1</td>
	<tr>
	<tr>
		<td>2</td>
		<td>2 board</td>
		<td>Lee WonKee</td>
		<td>1</td>
	<tr>
	<tr>
		<td>3</td>
		<td>3 board</td>
		<td>Lee WonKee</td>
		<td>1</td>
	<tr>
	<tr>
		<td>4</td>
		<td>4 board</td>
		<td>Lee WonKee</td>
		<td>1</td>
	<tr>
	<tr>
		<td colspan="4" align="center"><button>edit</button> </td>
	</tr>
</table>
</body>
</html>