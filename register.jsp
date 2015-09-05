<%@ page language="java" import="java.sql.*" %>

<%
  		String farmer=request.getParameter("farmername"); 
 String location = request.getParameter("location");
 String pin = request.getParameter("pin");
 String typefarming = request.getParameter("typefarming");
 String land = request.getParameter("land");
 String year = request.getParameter("year");
 String str="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
Statement st1 = conn.createStatement();
st.executeUpdate("insert into register values('"+farmer+"','"+location+"','"+pin+"','"+typefarming+"','"+land+"','"+year+"')");
out.println("hello &nbsp; " + farmer + " &nbsp; this is your profile <br>" );
out.println(" Statistics and permutations<br>" );

ResultSet rs1 = st1.executeQuery("select soiltype,soilattribute,rain,pest,irrigation,weed from soilinfo where pin='"+pin+"'");
%><table border=1 cellspacing=5><%
if(rs1.next())
{
	str=str +"<tr><td width=200>soil type</td><td>:</td><td>"+rs1.getString("soiltype")+
	"<tr><td width=200>soil Attribute</td><td>:</td><td>"+
	rs1.getString("soilattribute")+"<tr><td width=200>rain</td><td>:</td><td>"+
	rs1.getString("rain")+"<tr><td width=200>pest</td><td>:</td><td>"+rs1.getString("pest")+
	"<tr><td width=200>irrigation</td><td>:</td><td>"+rs1.getString("irrigation")+
	"<tr><td width=200>weed</td><td>:</td><td>"+rs1.getString("weed") + "</td></tr>";
}
out.println(str);
          %>
		  </table>
		  
		  <a href="myprofile.html">My profile</a><br>
		
		  
		
		  
		  
		  
