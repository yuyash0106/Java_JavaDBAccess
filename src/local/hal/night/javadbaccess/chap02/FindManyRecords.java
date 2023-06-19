package local.hal.night.javadbaccess.chap02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 * Java DB Access Lesson Chap02 Src01
 *
 * 複数行のデータ取得。
 *
 * @author yuyas
 */
public class FindManyRecords {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM orders WHERE order_mode=?";
		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "online");
			rs = stmt.executeQuery();
			while (rs.next()) {
				Integer orderId = rs.getInt("order_id");
				Timestamp orderDate = rs.getTimestamp("order_date");
				String orderMode = rs.getString("order_mode");
				Integer customerId = rs.getInt("customer_id");
				Integer orderStatus = rs.getInt("order_status");
				Double orderTotal = rs.getDouble("order_total");

				System.out.println("----------------");
				System.out.println("注文ID:" + orderId);
				System.out.println("注文日時" + orderDate);
				System.out.println("注文種類" + orderMode);
				System.out.println("顧客ID" + customerId);
				System.out.println("注文状況" + orderStatus);
				System.out.println("注文合計" + orderTotal);
			}
		} catch (SQLException ex) {
			System.out.println("SQLExceptionが発生しました。" + ex.getMessage());
		} finally {
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (SQLException ex) {
					System.out.println("ResultSetオブジェクト切断中にSQLExceptionが発生しました。" + ex.getMessage());
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException ex) {
					System.out.println("Statementオブジェクト切断中にSQLExceptionが発生しました。" + ex.getMessage());
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ex) {
					System.out.println("DB接続切断中にSQLExceptionが発生しました。" + ex.getMessage());
				}
			}
		}
	}
}
