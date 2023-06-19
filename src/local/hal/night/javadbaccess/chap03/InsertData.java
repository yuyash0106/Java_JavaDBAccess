package local.hal.night.javadbaccess.chap03;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.Calendar;

/**
 * Java DB Access Lesson Chap03 Src01
 *
 * データ登録
 *
 * @author yuyas
 */
public class InsertData {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		int orderId = 8000;
		Calendar cal = Calendar.getInstance();
		cal.set(2013, 10,10,18,24,56);
		Timestamp orderDate = new Timestamp(cal.getTimeInMillis());
		String orderMode = "web";
		int customerId = 101;
		int orderStatus = 0;
		double orderTotal = 1500.23;

		Connection con = null;
		PreparedStatement stmt = null;
		String sql = "INSERT INTO orders(order_id,order_date,order_mode,customer_id,order_status,order_total,sales_rep_id,promotion_id)"
				+ " VALUES(?,?,?,?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
			stmt = con.prepareStatement(sql);
			stmt.setInt(1,orderId);
			stmt.setTimestamp(2, orderDate);
			stmt.setString(3, orderMode);
			stmt.setInt(4, customerId);
			stmt.setInt(5, orderStatus);
			stmt.setDouble(6, orderTotal);
			stmt.setNull(7, Types.INTEGER);
			stmt.setNull(8, Types.INTEGER);
			int result = stmt.executeUpdate();
			System.out.println(result+"件のデータが登録されました。");
		}
		catch(SQLException ex) {
			System.out.println("SQLExceptionが発生しました："+ex.getMessage());
		}
		finally {
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
