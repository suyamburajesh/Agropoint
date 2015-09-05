<%@ page language="java" import="java.sql.*" %>

<%
  		String user=request.getParameter("newuser"); 
 String password=request.getParameter("newpassword"); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
st.executeUpdate("insert into loginfarmer values('"+user+"','"+password+"')");

out.println("welcome new farmer &nbsp;" + user);

          %><a href="index.html">go and login</a>
