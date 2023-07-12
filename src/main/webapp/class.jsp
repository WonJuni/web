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
<table border="1">
	<tr>
		<th>class number</th>
		<th>class name</th>
		<th>class desc</th>
	</tr>
<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3307/kd";
String user = "root";
String passward = "kd1824java";
Connection connection = DriverManager.getConnection(url, user, passward);
Statement statement = connection.createStatement();
String sql = "SELECT * FROM CLASS_INFO";
ResultSet resultSet = statement.executeQuery(sql);
%>

<%
while(resultSet.next()){
%>
	<%="<tr>"%>
	<%="<td>" + resultSet.getString("CI_NUM") + "</td>"%>
	<%="<td>" + resultSet.getString("CI_NAME") + "</td>"%>
	<%="<td>" + resultSet.getString("CI_DESC") + "</td>"%>
	<%="</tr>"%>
	
<%	
}
%>
	
	
</table>
</body>
</html>