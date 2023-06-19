package local.hal.night.javadbaccess.chap03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

public class UpdateData {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		int salesRepId = 10;
		int promotionId = 20;
		int orderId = 8000;
		Calendar cal = Calendar.getInstance();
		cal.set(2013, 10, 10, 18, 24, 56);

		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "UPDATE orders"
				+ " SET sales_rep_id = ?,promotion_id = ? "
				+ "WHERE order_id=?";
		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, salesRepId);
			stmt.setInt(2, promotionId);
			stmt.setInt(3,orderId);
			int result = stmt.executeUpdate();
			System.out.println(result + "件のデータが更新されました。");
		} catch (SQLException ex) {
			System.out.println("SQLExceptionが発生しました：" + ex.getMessage());
		} finally {
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
}
