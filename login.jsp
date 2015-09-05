<%@ page language="java" import="java.sql.*" %>

<%
  		String user=request.getParameter("exuser"); 
 String password=request.getParameter("expassword"); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/gov","root","ashmiajeesh");
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery("select username,password from loginfarmer where username='"+user+"' and password='"+password+"'");
String Password="";
String User="";
while(rs.next())
{
 Password=rs.getString("password");

}
			if(Password.equals(password)||User.equals(user))
			{
                out.println("<h1 id=heading><center><br>hello &nbsp;" + user + " welcome to Agri system</h1></center> ");
				  %>
				  <html>
				  <head>
				  <style>
				  *{margin:0;padding:0;}
				  #heading{
					  background-color:#33CC66;
					  color :white;
					  height:100px;
 box-shadow: 0px 0px 12px rgba(88, 83, 74, .7);
						
				  }
				 .farmername,.location,.pin,.typefarming,.land,.year{
				    border-radius : 5px;height:25px;
				 }
				 .registersubmit{
					 width:70px;
height:30px;
border-radius:12px;
background-color:#33CC66;
				 }
				 .registersubmit:hover{
					 background-color:white;
				 }
				  </style>
				  				 <link rel="stylesheet" href="css/style.css">
				
				 </head>
				  <body>
				  <br>
				  <div id="nav">
				  
				  <ul>
					<a href="#">	<li>Updation</li></a>
					<a href="#">		<li>Information</li></a>
					<a href="#">		<li>Account</li></a>
				<a href="#">			<li>Settings</li></a>
				  
				  </ul>
				  </div>
				  <div id="form3">
				  <table height="500" width="400" style="margin-left:500px;margin-top:20px;font-size:17px;font-weight:bold;">
				  <form method="post" action="register.jsp" name="Registrationform" >
				  <tr>
				  <td>Farmer Name</td><td><input type="text" name="farmername"  id="farmername" class="farmername"  required="required"/></td><tr>

				  <tr>
				  <td>location</td><td><input type="text" name="location" id="location" class="location" required="required" /></td><tr>
				   <tr >
				  <td>pincode</td><td><input type="text" name="pin" id="pin" class="pin" required="required" /></td><tr>
				   <tr>
				  <td>type of Farming</td><td><input type="text" name="typefarming" id="typefarming" class="typefarming" required="required" /></td><tr>
				   <tr>
				  <td>Total land</td><td><input type="text" name="land" id="land" class="land" required="required" /></td><tr>
				   <tr>
				  <td>Yield/year</td><td><input type="text" name="year" id="year" class="year" required="required" /></td><tr>
				   <tr>
				  <td><center><input type="submit" value="inventory" class="registersubmit"/></center></td><td></td><tr>
				  </form>
				  </table>
				  </div>
				  </body>
				  </html>
				  <%
			}
			else
			{
				out.println("Invalid username or password" +"<br><a href=index.html>Go to previous login page</a>");
			}

          %>
