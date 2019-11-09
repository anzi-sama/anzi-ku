package com.guat.service;

import java.util.List;


import com.guat.bean.Datamanager;
import com.guat.bean.Medical;
import com.guat.bean.User;
import com.guat.dao.UserDao;





public class UserService {
	private static UserService userService;
	
	private  UserService() {}
	
	public static UserService getInstance() {
		if(userService==null) {
			userService=new UserService();
		}
		return userService;
	}
	
	UserDao userDao=UserDao.getInstance();
	
	/*
	 * 注册实现功能
	 */
	public User register(User user) {
	
		return userDao.insertUser(user);
	}

	/**
	 * 登录方法
	 * @param username
	 * @param md5
	 * @return
	 */
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.queryByUsernameAndPassword(username, password);
	}
	//用户管理查询 条件组合
	
	public  List<User> QueryUser(User user){
		return userDao.QueryUser(user);
		
	}
	/**
	 * 用户管理ID查询
	 * @param user
	 * @return
	 */
	public  User UserQueryId(User user){
		return userDao.UserQueryId(user);
		
	}
	/**
	 * 用户管理：编辑
	 * @param id
	 * @param sex
	 * @param rule
	 * @param content
	 */
	public void UserManageUpdete(Integer id,String sex,Integer rule,String content) {
		userDao.UserManageUpdete(id, sex, rule, content);
	}
	/**
	 * 用户管理：更新密码
	 * @param id
	 * @param password
	 */
	public void UserUpdetePassword(Integer id,String password) {
		userDao.UserUpdetePassword(id, password);
	}
	/**
	 * 用户管理：添加
	 * @param username
	 * @param password
	 * @param rule
	 * @param sex
	 */
	public boolean UserManagerAdd(Integer id,String username,String password,String sex,Integer rule,String realname) {
		 return userDao.UserManagerAdd(id,username, password, sex, rule,realname);
	}

	
	/**
	 * 插入成千上万条用户记录
	 * @return 
	 */
	public void insertUserinfinity(User user) {
		// TODO Auto-generated method stub
		userDao.insertUserInfinity(user);
	}


	public boolean usernameExist(String username) {
		
		return userDao.queryUsername(username);
	}

	/**
	 * 数据管理查询
	 */
	public List<Datamanager> shujuguangli(Datamanager dat)
	{
		return userDao.shujuguangliCondition(dat);
	}
	/**
	 * 数据统计查询
	 * <p>Title: shujuguangli</p>  
	 * <p>Description: </p>  
	 * @param sujuuser
	 * @return
	 */
	public List<User> shjutongji()
	{
		return userDao.shjutongji();
	}
	
	
	/**
	 * 档案管理：联合查询用户信息
	 * @param user
	 */
	public List<User> queryUsers(User user) {
		
		return userDao.queryUserByCondition(user);
		
		
	}

	/**
	 *   数据管理 ：批量删除
	 */
	public void shujuplsc(String[] datid) {
		Integer[] datids=new Integer[datid.length];
		for(int i=0;i<datids.length;i++) {
			datids[i]=Integer.parseInt(datid[i]);
		}
//	调用dao方法实现删除
	userDao.shujuplsc(datids);
	}
/**
 * 数据管理：获取将要编辑的用户信息
 */
	public Datamanager shujuxg(Integer datid) {
		// TODO Auto-generated method stub
		
		return userDao.shujuxg(datid);
	}
	
	/**
	 * 档案管理：获取需要编辑的用户信息
	 * @param parseInt
	 */
	
	public User dangan_selectUser(Integer uid) {
		// TODO Auto-generated method stub
		
		return userDao.selectUserByUid(uid);
	}

	

    /**
     * 用户管理：批量删除
     * @param uids
     */
	
	public boolean deleteUsers(String[] uids) {
		Integer[] userid=new Integer[uids.length];
		for(int i=0;i<userid.length;i++) {
			userid[i]=Integer.parseInt(uids[i]);
		}
		//调用dao方法实现删除功能
    	return userDao.deleteUser(userid);	
	}
	
	/**
	 * 数据管理：修改信息
	 */
	public boolean shujuxg_one(Datamanager data) {
		// TODO Auto-generated method stub
		return userDao.shujuxg_one(data);
	}
	
	/**
	 * 档案管理：编辑用户信息
	 */
	public boolean updateUserDangan(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUserDangan(user);
	}
	
	/**
	 * 档案管理：获取自动创建用户时所需的seq
	 */
	public Integer getAutoCreateSeq() {
		// TODO Auto-generated method stub
		return userDao.getAutoCreateSeq();
	}
	
	/**
	 * 档案管理：添加病人用户
	 * @return
	 */
	public boolean add_DanganUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addDanganUser(user);
	}
	
	
	/**
	 * 用户：提交诊断报告
	 * @param medical
	 */
	public boolean submitTestInfo(Medical medical) {
		// TODO Auto-generated method stub
		return userDao.insertInfo(medical);
	}
	
	/**
	 * 医生：获取病人诊断报告
	 * @param username
	 * @return
	 */
	public Medical getMedicalInfo(String username) {
		// TODO Auto-generated method stub
		return userDao.selectInfoByUsername(username);
	}
	
	/**
	 * 医生：提交医疗建议
	 * @return
	 */
	public boolean submitMedicalAdvice(String message,String warm,String username) {
		// TODO Auto-generated method stub
		return userDao.insertMedicalInfo(message,warm,username);
	}
	
	/**
	 * 用户：判断诊断表里有没有记录
	 * @param username
	 * @return
	 */
	public boolean isExist(String username) {
		// TODO Auto-generated method stub
		return userDao.selectUserByUsername(username);
	}


}
