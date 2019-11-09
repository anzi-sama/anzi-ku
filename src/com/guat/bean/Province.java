package com.guat.bean;

public class Province {

	private Integer id;
	private String provinceId;
	private String provinceName;

	
	public Province() {
	}

	public Province(String pro) {
		this.provinceId=pro;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	@Override
	public String toString() {
		return "Province [id=" + id + ", provinceId=" + provinceId + ", provinceName=" + provinceName + "]";
	}
	

}
