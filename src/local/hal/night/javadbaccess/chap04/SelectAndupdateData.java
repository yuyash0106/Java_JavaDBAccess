package local.hal.night.javadbaccess.chap04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/**
 * Java DB Access Lesson Chap04 Src01
 *
 * トランザクション処理。
 *
 * @author yuyas
 */
public class SelectAndupdateData {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		int inputOrderId = 8000;
		int inputSalesRepId = 10;
		int inputPromotionId = 20;

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM orders WHERE order_id=? FOR UPDATE";
		String sqlUpdate = "UPDATE orders SET sales_rep_id=?,promotion_id=? WHERE order_id=?";
		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			con.setAutoCommit(false);
			stmt = con.prepareStatement(sqlSelect);
			stmt.setInt(1, inputOrderId);
			rs = stmt.executeQuery();
			if(!rs.next()) {
				System.out.println("更新対象レコードが存在しませんので、ロールバックを行います。");
				con.rollback();
			}
			else {
				SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss");
				DecimalFormat decFormatter = new DecimalFormat("$###,###.###");

				Integer orderId = rs.getInt("order_id");
				Timestamp orderDate = rs.getTimestamp("order_date");
				String orderMode = rs.getString("order_mode");
				Integer customerId = rs.getInt("customer_id");
				Integer orderStatus = rs.getInt("order_status");
				Double orderTotal = rs.getDouble("order_total");

				System.out.println("注文ID："+orderId);
				System.out.println("注文日時："+dateFormatter.format(orderDate));
				System.out.println("注文種類："+orderMode);
				System.out.println("顧客ID："+customerId);
				System.out.println("注文状況："+orderStatus);
				System.out.println("注文合計："+decFormatter.format(orderTotal));

				close(rs);
				close(stmt);

				stmt = con.prepareStatement(sqlUpdate);
				stmt.setInt(1, inputSalesRepId);
				stmt.setInt(2, inputPromotionId);
				stmt.setInt(3, inputOrderId);
				int result = stmt.executeUpdate();
				con.commit();
				System.out.println(result+"件のデータが更新されました。");
			}
		}
		catch(SQLException ex ) {
			System.out.println("SQLExceptionが発生しました。"+ex.getMessage());
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
		if(rs != null) {
			try {
				rs.close();
			}
			catch(SQLException ex){
				System.out.println("ResultSetオブジェクト切断中にSQLExceptionが発生しました："+ex.getMessage());
			}
		}
	}
}
