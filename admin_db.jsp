<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 body
    {
    	background-image:url("img.png");
    	background-size:cover;
    }
    h2{
    	color:black;
    	font-weight:bolder;
    }
	#customers {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 90%;
	  box-shadow:0 10px 10px white;
	  margin-top:1%;
	}
	div{
		height:600px;
		overflow:auto
	}
	
	#customers td, #customers th {
	text-align:center;
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#customers tr:nth-child(even){background-color: #f2f2f2;}
	
	#customers tr:hover {
		background-color: orange;
	 }
	
	#customers th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: center;
	  background-color: black;
	  position:sticky;
	  top:0;
	  color: white;
	}
	 .tab th
	{
		text-align:center;
		
	}
	#link
	{
		background-color:#333;
		width:140px;
		height:60px;
		
		transition: all 0.3s linear;
		border-radius:5px;
		left:720px;
		position:relative;
		
	}
	#link a
	{
		width:45px;
		text-decoration:none;
		font-size:16px;
		color:white;
		position:absolute;
		top:-13px;
		margin-top:13px;
		margin-left:34px;
		padding:20px;
	}
	#link:hover
	{
		background-color:orange;
		
	}
	#link a:hover
	{
		color:black;
	}
	
    
    
</style>
</head>
<body>

 <h2 align="color:white"><center>TOTAL SCORE LIST</center></h2>
    <div>
   
    <table border="1" id="customers" class="tab" align="center">
     
        <tr>
            <th>ID</th>
            <th>EMAIL ID</th>
            <th>CATEGORY</th>
            <th>SCORE OUT OF 100</th>
        </tr>
        
        <%
            Connection con1 = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj", "root", "12345");
                stmt = con1.createStatement();
                String sql = "SELECT * FROM proj2";
                rs = stmt.executeQuery(sql);
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("ID") + "</td>");
                    out.println("<td>" + rs.getString("Email") + "</td>");
                    out.println("<td>" + rs.getString("Category") + "</td>");
                    out.println("<td>" + rs.getInt("Score") + "</td>");
                    out.println("</tr>");
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("<p>Error retrieving details: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stmt != null) {
                        stmt.close();
                    }
                    if (con1 != null) {
                        con1.close();
                    }
                } catch (SQLException e) {
                    out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        %>
    </table>
        </div>
     <div id="link">
        	<a href="Front_pg.jsp">EXIT</a>
        </div>
</body>
</html>