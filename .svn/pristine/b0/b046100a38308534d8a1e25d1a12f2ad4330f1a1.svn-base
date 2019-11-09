package com.guat.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.guat.bean.Module;
import com.guat.bean.WebInfoManage;
import com.guat.util.DBUtil;

public class WebInfoManageDao {
	private static WebInfoManageDao webInfoManageDao;

	private WebInfoManageDao() {
		
	}
	public static WebInfoManageDao getInstance() {
		if(webInfoManageDao==null) {
			webInfoManageDao=new WebInfoManageDao();
		}
		return webInfoManageDao;
	}
	/**
	 * 首页添加方法
	 */
	public boolean insertHome(WebInfoManage webInfoManage) {
		Connection con=null;
		PreparedStatement stat=null;
		
		con=DBUtil.getConnection();
		try {
			stat=con.prepareStatement("insert into LOL_WEBINFOMANAGE(id,module,title,"
					+ "imagepath,uploadtime,content) values(WEBINFOMANAGE_SEQ.nextval,?,?,?,sysdate,?)");
			stat.setInt(1, webInfoManage.getModule().getId());
			stat.setString(2, webInfoManage.getTitle());
			stat.setString(3, webInfoManage.getImagePath());
			stat.setString(4, webInfoManage.getContent());
			int n=stat.executeUpdate();
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,null);
		}
		return false;
		
	}
	public List<WebInfoManage> queryHome() {
		Connection con=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		
		con=DBUtil.getConnection();
		try {
			stat=con.prepareStatement("select t.id,t.module,m.content mcontent,title,imagepath,uploadtime,t.content tcontent \r\n" + 
					"  from LOL_WEBINFOMANAGE t,lol_webmodule m\r\n" + 
					"  where t.module=m.id");
			rs=stat.executeQuery();
			
			List<WebInfoManage> list=new ArrayList<WebInfoManage>();
			while(rs.next()) {
				WebInfoManage webInfoManage=new WebInfoManage();
				webInfoManage.setId(rs.getInt("id"));
				
				Module mo=new Module(rs.getInt("module"),rs.getString("mcontent"));
				
				webInfoManage.setModule(mo);
				webInfoManage.setTitle(rs.getString("title"));
				webInfoManage.setImagePath(rs.getString("imagepath"));
				webInfoManage.setUpLoadTime(rs.getDate("uploadtime"));
				webInfoManage.setImagePath(rs.getString("imagepath"));
				webInfoManage.setContent(rs.getString("tcontent"));
				list.add(webInfoManage);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,rs);
		}
		return null;
	}
	public boolean updataWeb(WebInfoManage web) {
		Connection con=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		
		con=DBUtil.getConnection();
		try {
			stat=con.prepareStatement("update LOL_WEBINFOMANAGE set module=?,title=?,content=? where id=? ");
			stat.setInt(1, web.getModule().getId());
			stat.setString(2, web.getTitle());
			stat.setString(3, web.getContent());
			stat.setInt(4, web.getId());
			int n=stat.executeUpdate();
			
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,rs);
		}
		return false;
	}
	public boolean deleteWebInfo(Integer parseInt) {
		Connection con=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		
		con=DBUtil.getConnection();
		try {
			stat=con.prepareStatement(" delete from LOL_WEBINFOMANAGE where id=?  ");
			stat.setInt(1, parseInt);
			
			int n=stat.executeUpdate();
			
			if(n>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,rs);
		}
		
		return false;
	}
	
	/**
	 * 网站信息管理首页的批量删除
	 * @param webId
	 */
	public boolean deleteWebInfos(Integer[] webId) {
		Connection con=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		StringBuffer sb=new StringBuffer("delete from LOL_WEBINFOMANAGE");
		con=DBUtil.getConnection();
		try {
			if(webId.length>0) {
				
				
				sb.append(" where id in (");
				for(Integer i:webId)
				{
					sb.append(i+",");//1,2,3,
				}	
			}
			
			String sql_result=sb.substring(0, sb.toString().length()-1)+")";
			System.out.println("sql_result:"+sql_result);
			
			stat = con.prepareStatement(sql_result);
			
			int n=stat.executeUpdate();
			if(n>0) {
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,rs);
		}
		
		return false;
	}
	public List<WebInfoManage> queryContent(String content) {
		Connection con=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		
		con=DBUtil.getConnection();
		try {
			StringBuffer sql=new StringBuffer("select t.id,t.module,m.content mcontent,title,imagepath,uploadtime,t.content tcontent\r\n" + 
					"          from LOL_WEBINFOMANAGE t,lol_webmodule m\r\n" + 
					"          where t.module=m.id ");
			sql.append(" and  t.content like '%"+content+"%'");
			System.out.println(sql.toString());
			stat=con.prepareStatement(sql.toString());
			rs=stat.executeQuery();
			
			List<WebInfoManage> list=new ArrayList<WebInfoManage>();
			while(rs.next()) {
				WebInfoManage webInfoManage=new WebInfoManage();
				webInfoManage.setId(rs.getInt("id"));
				
				Module mo=new Module(rs.getInt("module"),rs.getString("mcontent"));
				
				webInfoManage.setModule(mo);
				webInfoManage.setTitle(rs.getString("title"));
				webInfoManage.setImagePath(rs.getString("imagepath"));
				webInfoManage.setUpLoadTime(rs.getDate("uploadtime"));
				webInfoManage.setImagePath(rs.getString("imagepath"));
				webInfoManage.setContent(rs.getString("tcontent"));
				list.add(webInfoManage);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con, stat,rs);
		}
		return null;
	}
}
