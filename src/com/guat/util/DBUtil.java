package com.guat.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * 数据库连接工具类
 * @author Administrator
 *
 */
public class DBUtil {
	

	public static Connection getConnection()
	{
		Connection conn=null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/hospital");
			conn = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			//throw new Exception("Can not get connection", e);
			e.printStackTrace();
		}

		return conn;
	}
	
	public static void close(Connection conn,Statement stmt,ResultSet rs)
	{
		try {
			if(conn!=null)
			{
				conn.close();
			}
			if(stmt!=null)
			{
				stmt.close();
			}
			if(rs!=null)
			{
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
