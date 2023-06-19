package local.hal.night.javadbaccess.chap01;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Java DB Access Lesson Chap01 Src01
 *
 * DBへの接続・切断
 * 不完全版
 *
 * @author yuyas
 */
public class ConnectToDBMiss {
	private static final String DB_URL = "jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf8";
	private static final String USERNAME = "shopowner";
	private static final String PASSWORD = "hogehoge";

	public static void main(String[] args) throws Exception{
		Connection con = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		System.out.println("DB接続を確立しました。");

		con.close();
		System.out.println("DB接続を切断しました。");

		System.out.println("全ての処理が終了しました。");
	}
}
