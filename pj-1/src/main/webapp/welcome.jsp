<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<table border = 1>
<thead>
<tr>
<th>id</th>
<th>name</th>
</tr>
</thead>
<tbody>


<% 
  Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/praveen","root", "Praveen#1221");
String sql = "select* from employee";
PreparedStatement pmst = conn.prepareStatement(sql);
 ResultSet rs = pmst.executeQuery();
 while(rs.next()){
	 
%>
<tr>
<td><%= rs.getInt("id") %></td>
<td><%= rs.getString("name") %></td>
</tr>

<% } %>
</tbody>
</table>
</body>
</html>