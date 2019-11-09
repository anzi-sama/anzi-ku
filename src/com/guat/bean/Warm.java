package com.guat.bean;
/**
 * 警告表
* <p>Title: Warm</p>  
* <p>Description: </p>  
* @author sunhui
* @date 2019年10月10日
 */
public class Warm {
	private Integer id; //
	private String content; //状态
	public Warm() {
		
	}
	public Warm(Integer id, String content) {
	
		this.id = id;
		this.content = content;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Warm [id=" + id + ", content=" + content + "]";
	}
	
}
