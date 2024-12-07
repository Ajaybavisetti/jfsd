<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Contact List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <header class="bg-primary text-white text-center p-3">
        <h1>Contact List</h1>
    </header>
    <div class="container my-5">
        <table class="table table-bordered table-hover">
            <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Message</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_database_name", "your_username", "your_password");
                        stmt = conn.createStatement();
                        String sql = "SELECT id, name, email, phone, message FROM contact";
                        rs = stmt.executeQuery(sql);

                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                            out.println("<td>" + rs.getString("name") + "</td>");
                            out.println("<td>" + rs.getString("email") + "</td>");
                            out.println("<td>" + rs.getString("phone") + "</td>");
                            out.println("<td>" + rs.getString("message") + "</td>");
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        out.println("<tr><td colspan='5'>Error: " + e.getMessage() + "</td></tr>");
                    } finally {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    }
                %>
            </tbody>
        </table>
    </div>
    <footer class="bg-primary text-white text-center p-3">
        <p>Admin Dashboard | Contact Management</p>
    </footer>
</body>
</html>
