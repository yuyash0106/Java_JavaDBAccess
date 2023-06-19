package local.hal.night.javadbaccess.chap02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FindCustomersFromFirstName {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		String serchName = "ar";
		String percent = "%";
		String percentName =percent+serchName+percent;

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT customer_id,cust_first_name"
				+ " FROM customers "
				+ "WHERE cust_first_name"
				+ " LIKE ?";

		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			stmt = con.prepareStatement(sql);
			stmt.setString(1, percentName);
			rs = stmt.executeQuery();
			while (rs.next()) {
				int customerId = rs.getInt("customer_id");
				String custFirstName = rs.getString("cust_first_name");

				System.out.println("----------------");
				System.out.println("顧客ID" + customerId);
				System.out.println("顧客氏名" + custFirstName);
			}
		}
		catch (SQLException ex) {
			System.out.println("SQLExceptionが発生しました。" + ex.getMessage());
		}
		finally {
			close(rs);
			close(stmt);
			close(con);
		}
	}
	private static void close(Connection con) {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException ex) {
				System.out.println("DB接続切断中にSQLExceptionが発生しました：" + ex.getMessage());
			}
		}
	}

	private static void close(PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException ex) {
				System.out.println("Statementオブジェクト切断中にSQLExceptionが発生しました：" + ex.getMessage());
			}
		}
	}

	private static void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException ex) {
				System.out.println("ResultSetオブジェクト切断中にSQLExceptionが発生しました：" + ex.getMessage());
			}
		}
	}
}
