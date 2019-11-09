package com.guat.bean;

import java.util.Date;

public class WebInfoManage {
	private Integer id;
	private Module module;
	private String title;
	private String imagePath;
	private String content;
	private Date upLoadTime;
	
	

	public  WebInfoManage(Integer id, Module module, String title, String imagePath, String content, Date upLoadTime) {
		super();
		this.id = id;
		this.module = module;
		this.title = title;
		this.imagePath = imagePath;
		this.content = content;
		this.upLoadTime = upLoadTime;
	}

	public WebInfoManage() {
	
	}

	public Date getUpLoadTime() {
		return upLoadTime;
	}

	public void setUpLoadTime(Date upLoadTime) {
		this.upLoadTime = upLoadTime;
	}
	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "WebInfoManage [module=" + module + ", title=" + title + ", imagePath=" + imagePath + ", content="
				+ content + "]";
	}
	
	
}
