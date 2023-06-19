package local.hal.night.javadbaccess.chap01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Java DB Access Lesson Chap01 Src02
 *
 * DBへの接続・切断
 * 完全版
 *
 * @author yuyas
 */
public class ConnectToDB {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) {
		Connection con = null;

		try {
			con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
			System.out.println("DB接続を確立しました。");
		} catch (SQLException ex) {
			System.out.println("SQLExceptionが発生しました。" + ex.getMessage());
		} finally {
			if (con != null) {
				try {
					con.close();
					System.out.println("DB接続を切断しました。");
				} catch (SQLException ex) {
					System.out.println("DB接続切断中にSQLExceptionが発生しました。" + ex.getMessage());
				}
			}
		}

		System.out.println("全ての処理が終了しました。");
	}
}
