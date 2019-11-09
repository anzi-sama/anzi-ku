package com.guat.service;

import java.util.List;

import com.guat.bean.WebInfoManage;
import com.guat.dao.WebInfoManageDao;

public class WebInfoManageService {
	private static WebInfoManageService webMa;

	private WebInfoManageService() {
		
	}
	public static WebInfoManageService getInstance() {
		if(webMa==null) {
			 webMa=new  WebInfoManageService();
		}
		return  webMa;
	}
	
	WebInfoManageDao webDao=WebInfoManageDao.getInstance();
	/**
	 * 网站信息管理首页添加方法处理
	 */
	public boolean addHome(WebInfoManage webInfoManage) {
		return  webDao.insertHome(webInfoManage);
	}
	/**
	 * 网站信息管理首页显示数据方法处理
	 */
	public List<WebInfoManage> checkHome() {
		
		return webDao.queryHome();
	}
	/**
	 * 网站信息管理首页更新方法处理
	 */
	public boolean updataHome(WebInfoManage web) {
		return  webDao.updataWeb(web);
		
	}
	/**
	 * 网站信息管理首页删除方法处理
	 */
	public boolean deleteWeb(Integer parseInt) {
		
		return  webDao.deleteWebInfo(parseInt);
		
	}
	public boolean deleteWebs(String[] webIds) {
		
		Integer[] webId=new Integer[webIds.length];
		for(int i=0;i<webIds.length;i++)
		{
			
			webId[i]=Integer.parseInt(webIds[i]);
			
			
		}
	
		return webDao.deleteWebInfos(webId);
	}
	public List<WebInfoManage> queryContent(String content) {
		
		return webDao.queryContent(content);
	}
}	
