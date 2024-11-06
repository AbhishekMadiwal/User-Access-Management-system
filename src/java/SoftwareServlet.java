import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SoftwareServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String[] accessLevels = request.getParameterValues("access_levels");
        String accessLevelsStr = String.join(",", accessLevels);  

        try (Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/your_database", "user", "password")) {
            String sql = "INSERT INTO software (name, description, access_levels) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setString(3, accessLevelsStr);
            stmt.executeUpdate();
            response.sendRedirect("createSoftware.jsp");  
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
