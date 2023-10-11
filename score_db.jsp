<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
    body
    {
    	background-image:url("test.jpg");
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
		width:100px;
		height:32px;
		transition: all 0.3s linear;
		border-radius:5px;
		left:770px;
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
		margin-left:10px;
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
<center>
    <%
        String email_id = request.getParameter("email_id");
    	String category = request.getParameter("category");
        int score = Integer.parseInt(request.getParameter("score"));
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj", "root", "12345");
            String sql = "INSERT INTO proj2 (Email,Category,Score) VALUES (?, ?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, email_id);
            ps.setString(2, category);
            ps.setInt(3, score);
            int rowsInserted = ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<p>Error inserting details: " + e.getMessage() + "</p>");
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
            }
        }
        
    %>
    <h2><center>SCORE LIST</center></h2>
    <div>
   
    <table border="1" id="customers" class="tab">
     
        <tr>
            <th>ID</th>
            <th>EMAIL ID</th>
            <th>CATEGORY</th>
            <th>SCORE OUT OF 100</th>
        </tr>
        
        <%
            Connection con1 = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj", "root", "12345");
                String sql = "SELECT * FROM proj2 where Email= ?";
                stmt = con1.prepareStatement(sql);
                stmt.setString(1, email_id);
                
                
                rs = stmt.executeQuery();
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" +"1" + "</td>");
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
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        %>
    </table>
        </div>
    </center>
    <div id="link">
        	<a href="Front.jsp">EXIT</a>
        </div>
</body>

</html>



