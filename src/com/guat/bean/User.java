package com.guat.bean;

import java.util.Date;

public class User {
	private Integer id;
	private String username;
	private String password;
	private Rule rule;
	private String realname;
	private String sex;
	private Date registerTime;
	private String status;
	private Province pid;
	private Integer age;
	private Culture culture;
	private Religion religion;
	private String address;
	private String phone;
	private String email;
	private String medical_info;
	private String imagepath;
	private String content;
	private Date birthday;
	public User() {}
	
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Rule getRule() {
		return rule;
	}
	public void setRule(Rule rule) {
		this.rule = rule;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Province getPid() {
		return pid;
	}
	public void setPid(Province pid) {
		this.pid = pid;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public Culture getCulture() {
		return culture;
	}
	public void setCulture(Culture culture) {
		this.culture = culture;
	}
	public Religion getReligion() {
		return religion;
	}
	public void setReligion(Religion religion) {
		this.religion = religion;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getMedical_info() {
		return medical_info;
	}

	public void setMedical_info(String medical_info) {
		this.medical_info = medical_info;
	}

	public User(Integer id, String username, String password, Rule rule, String realname, String sex, Date registerTime,
			String status, Province pid, Integer age, Culture culture, Religion religion, String address,
			String phone, String email, String content) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.rule = rule;
		this.realname = realname;
		this.sex = sex;
		this.registerTime = registerTime;
		this.status = status;
		this.pid = pid;
		this.age = age;
		this.culture = culture;
		this.religion = religion;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.content = content;
	}

	public User(Integer id, String username, Date registerTime) {
		super();
		this.id = id;
		this.username = username;
		this.registerTime = registerTime;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", rule=" + rule + ", realname="
				+ realname + ", sex=" + sex + ", registerTime=" + registerTime + ", status=" + status + ", pid=" + pid
				+ ", age=" + age + ", culture=" + culture + ", religion=" + religion + ", address=" + address
				+ ", phone=" + phone + ", email=" + email + ", medical_info=" + medical_info + ", imagepath="
				+ imagepath + ", content=" + content + ", birthday=" + birthday + "]";
	}

	
	
}
