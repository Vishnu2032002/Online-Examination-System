<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Examiner Details</title>
    <link rel="stylesheet" href="Book.css">
</head>
<body>
<script>
    	alert("Successfully register");
    </script>
    

<center><br><br>
    <h1>USER DETAILS STORTED</h1>
    
    <%
        String empID = request.getParameter("n1");
        String empName = request.getParameter("n2");
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj", "root", "12345");
            String sql = "INSERT INTO proj (Username,Passwords) VALUES (?, ?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, empID);
            ps.setString(2, empName);
            response.sendRedirect("options.jsp");
      
            int rowsInserted = ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<p>Error inserting employee details: " + e.getMessage() + "</p>");
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
    
    </center>
</body>
</html>



