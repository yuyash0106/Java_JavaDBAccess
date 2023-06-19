package local.hal.night.javadbaccess.chap02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FindOrdersByRange {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		double orderTotalInput1 = 100000;
		double orderTotalInput2 = 200000;
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT customer_id,order_id,order_total"
				+ " FROM orders WHERE order_total "
				+ "BETWEEN ? AND ? "
				+ "ORDER BY order_total DESC";

		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			stmt = con.prepareStatement(sql);
			stmt.setDouble(1, orderTotalInput1);
			stmt.setDouble(2, orderTotalInput2);
			rs = stmt.executeQuery();

			while (rs.next()) {
				Integer orderId = rs.getInt("order_id");
				Integer customerId = rs.getInt("customer_id");
				Double orderTotal = rs.getDouble("order_total");

				System.out.println("----------------");
				System.out.println("顧客ID" + customerId);
				System.out.println("注文ID:" + orderId);
				System.out.println("注文合計" + orderTotal);
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
