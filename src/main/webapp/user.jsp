
<%@page import="com.web.common.DBCon"%>
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
<table border = "1">
	<tr>
		<th>유저 번호 </th>
		<th>유저 아이디 </th>
		<th>유저 비밀번호</th>
		<th>유저 이름 </th>
	</tr>

<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3307/kd";
String user = "root";
String passward = "kd1824java";
Connection connection = DriverManager.getConnection(url, user, passward);
Statement statement = connection.createStatement();
String sql = "SELECT * FROM USER_INFO";
ResultSet resultSet = statement.executeQuery(sql);
%>
<%
while(resultSet.next()){
%>
	<%="<tr>"%>
	<%="<td>" + resultSet.getString("UI_NUM") + "</td>" %>
	<%="<td>" + resultSet.getString("UI_ID")+ "</td>"%>	
	<%="<td>" + resultSet.getString("UI_PWD")+ "</td>"%>
	<%="<td>" + resultSet.getString("UI_NAME")+ "</td>"%>
	<%="</tr>"%>
<%
}
%>
</table>
</body>
</html>