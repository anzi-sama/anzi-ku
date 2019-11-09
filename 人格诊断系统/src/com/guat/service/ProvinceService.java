package com.guat.service;

import java.util.List;

import com.guat.bean.Province;
import com.guat.dao.ProvinceDao;

public class ProvinceService {
	private static ProvinceService provinceService;

	private ProvinceService() {
	}
	public static ProvinceService getInstance() {
		if(provinceService==null) {
			provinceService=new ProvinceService();
		}
		return provinceService;
	}
	
	ProvinceDao provinceDao=ProvinceDao.getInstance();
	/*
	 * 获取所有省份的请求
	 */
	public List<Province> getAllProvince(){
		
		return provinceDao.queryProvince();
	}
}
