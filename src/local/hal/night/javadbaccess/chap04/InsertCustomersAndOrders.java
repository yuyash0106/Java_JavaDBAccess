package local.hal.night.javadbaccess.chap04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class InsertCustomersAndOrders {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		//customerテーブル登録
		int inputCustomerId = 3000;
		String inputCustomerFirstName = "Yuya";
		String inputCustomerLastName = "Ozaki";

		//ordersテーブル登録
		int inputOrderId = 9000;
		Calendar cal = Calendar.getInstance();
		Timestamp orderDate = new Timestamp(cal.getTimeInMillis());
		String orderMode = "web";
		int orderStatus = 0;
		double orderTotal = 1500.23;

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		//customerテーブルINSERT
		String sqlInsertCustomer = "INSERT INTO customers "
				+ "(customer_id,"//1 int
				+ "cust_first_name,"//2 text
				+ "cust_last_name,"//3 text
				+ "cust_address,"//4 text
				+ "phone_numbers,"//5 text
				+ "nls_language,"//6 text
				+ "nls_territory,"//7 text
				+ "credit_limit,"//8 decimal
				+ "cust_email,"//9 text
				+ "account_mgr_id,"//10 int
				+ "cust_geo_location,"//11 text
				+ "date_of_birth,"//12 date
				+ "marital_status,"//13 text
				+ "gender,"//14 char
				+ "income_level)"//15 text
				+ "VALUES "
				+ "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		//ordersテーブルINSERT
		String sqlInsertOrders = "INSERT INTO orders "
				+ "(order_id,"
				+ "order_date,"
				+ "order_mode,"
				+ "customer_id,"
				+ "order_status,"
				+ "order_total,"
				+ "sales_rep_id,"
				+ "promotion_id) "
				+ "VALUES(?,?,?,?,?,?,?,?)";

		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			con.setAutoCommit(false);

			stmt = con.prepareStatement(sqlInsertCustomer);

			SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss");
			DecimalFormat decFormatter = new DecimalFormat("$###,###.###");

			stmt.setInt(1, inputCustomerId);
			stmt.setString(2, inputCustomerFirstName);
			stmt.setString(3, inputCustomerLastName);
			stmt.setString(4, null);
			stmt.setString(5, null);
			stmt.setString(6, null);
			stmt.setString(7, null);
			stmt.setNull(8, Types.INTEGER);
			stmt.setString(9, null);
			stmt.setNull(10, Types.INTEGER);
			stmt.setString(11, null);
			stmt.setDate(12, null);
			stmt.setString(13, null);
			stmt.setString(14, null);
			stmt.setString(15, null);

			int resultCustomers = stmt.executeUpdate();
			System.out.println(resultCustomers + "件のデータが登録されました。(customers)");

			close(rs);
			close(stmt);

			stmt = con.prepareStatement(sqlInsertOrders);
			stmt.setInt(1, inputOrderId);
			stmt.setTimestamp(2, orderDate);
			stmt.setString(3, orderMode);
			stmt.setInt(4, inputCustomerId);
			stmt.setInt(5, orderStatus);
			stmt.setDouble(6, orderTotal);
			stmt.setNull(7, Types.INTEGER);
			stmt.setNull(8, Types.INTEGER);
			int resultOrders = stmt.executeUpdate();
			commit(con);
			System.out.println(resultOrders + "件のデータが登録されました。(orders)");
		} catch (SQLException ex) {
			rollback(con);
			System.out.println("SQLExceptionが発生しました：" + ex.getMessage());
		} catch (Exception ex) {
			rollback(con);
			System.out.println("想定外の例外が発生しました：" + ex.getMessage());
		} finally {
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

	private static void commit(Connection con) {
		if (con != null) {
			try {
				con.commit();
				System.out.println("コミットしました。");
			} catch (SQLException ex) {
				System.out.println("コミット中にSQLExceptionが発生しました：" + ex.getMessage());
			}
		}
	}

	private static void rollback(Connection con) {
		if (con != null) {
			try {
				con.rollback();
				System.out.println("ロールバックしました。");
			} catch (SQLException ex) {
				System.out.println("ロールバック中にSQLExceptionが発生しました：" + ex.getMessage());
			}
		}
	}
}
