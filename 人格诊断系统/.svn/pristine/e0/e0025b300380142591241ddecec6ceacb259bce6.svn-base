package com.guat.bean;

import java.util.Date;


/**
 * 数据管理表
* <p>Title: Datamanager</p>  
* <p>Description: </p>  
* @author sunhui
* @date 2019年10月10日
 */
public class Datamanager {
	private Integer id; //编号
	private Date testdate; //测试时间
	
	//这两个属性其实是对外键的定义

	private User user;//用户表
	private Warm warm;//警告标
	private Testtype testtype;//测试类型表
	public Datamanager() {

		}
		public Datamanager(Integer id, Date testdate, User user, Warm warm, Testtype testtype) {

			this.id = id;
			this.testdate = testdate;
			this.user = user;
			this.warm = warm;
			this.testtype = testtype;
		}
		@Override
		public String toString() {
			return "Datamanager [id=" + id + ", testdate=" + testdate + ", user=" + user + ", warm=" + warm
					+ ", testtype=" + testtype + "]";
		}
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public Date getTestdate() {
			return testdate;
		}
		public void setTestdate(Date testdate) {
			this.testdate = testdate;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public Warm getWarm() {
			return warm;
		}
		public void setWarm(Warm warm) {
			this.warm = warm;
		}
		public Testtype getTesttype() {
			return testtype;
		}
		public void setTesttype(Testtype testtype) {
			this.testtype = testtype;
		}
		
	
}
