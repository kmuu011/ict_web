package com.ict.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBCon {
	private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String id = "ictu";
	private static String pwd = "root";
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	
	
	public static Connection con;
	
	public static Connection getCon() {
		if(DBCon.con == null) {
			openCon();
		}
		return DBCon.con;
		
	}
	
	private static void openCon() {
		try {
			Class.forName(driver);
			DBCon.con = DriverManager.getConnection(url, id, pwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static void closeCon() {
		if(DBCon.con !=null) {
			try {
				DBCon.con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		DBCon.con = null;
	}
		
		
		
		
	
	
	
}
