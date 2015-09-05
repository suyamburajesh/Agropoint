<%@ page language="java" import="java.sql.*" %>

<%
  		String soiltype=request.getParameter("soiltype"); 
        String soilattribute=request.getParameter("soilattribute"); 
		String rain=request.getParameter("rain"); 
		String pest=request.getParameter("pest"); 
		String irrigation=request.getParameter("irrigation"); 
		String weed=request.getParameter("weed"); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
st.executeUpdate("insert into farmerprofile values('"+soiltype+"','"+soilattribute+"','"+rain+"','"+pest+"','"+irrigation+"','"+weed+"')");



          %>
