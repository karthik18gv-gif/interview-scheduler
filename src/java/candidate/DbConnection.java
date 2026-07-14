package candidate;

import java.sql.*;

public class DbConnection {

    public Connection con;
    public Statement st;
    public ResultSet rs;
    public PreparedStatement ps;

    public void connect() throws SQLException {

        try {

            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://127.0.0.1:3306/job_register",
                "root",
                "root");

            System.out.println("Database Connected Successfully");

        } catch(Exception ex)
          {
              ex.printStackTrace();
              throw new SQLException(ex);
          }
    }
}