package com.guat.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.guat.bean.Province;
import com.guat.util.DBUtil;

public class ProvinceDao {
	private static ProvinceDao provinceDao;

	private ProvinceDao() {
		
	}
	public static ProvinceDao getInstance() {
		if(provinceDao==null) {
			provinceDao=new ProvinceDao();
		}
		return provinceDao;
	}

	public List<Province> queryProvince() {
		Connection conn=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			stat=conn.prepareStatement("select id,provinceid,province from tab_province");
			rs=stat.executeQuery();
			
			List<Province> listProvince=new ArrayList<Province>();
			while(rs.next()) {
				
				Province province =new Province();
				province.setId(rs.getInt("id"));
				province.setProvinceId(rs.getString("provinceid"));
				province.setProvinceName(rs.getString("province"));
				
				listProvince.add(province);
			}
			return listProvince;
		} catch(Exception e) {
			
			e.printStackTrace();
		}finally {
			DBUtil.close(conn, stat, rs);
		}
		return null;
	}
}
