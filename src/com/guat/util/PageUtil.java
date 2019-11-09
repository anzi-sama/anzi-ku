package com.guat.util;

import java.util.List;




/**
 * 分页工具类
 * @author 安兹.乌尔恭
 *	/**
	 * 根据用户给定的数据进行计算获取用户最终想要的数据：
	 * 1.用户能够给定我们什么数据： 
	 * 
	 * 	查询结果	数据的总条数	每页显示几条数据（默认10条） 用户希望显示第几页的数据
	 * 
	 * 2.用户最终想要的数据	
	 * 
	 * 	对应请求页面的查询结果	分页的所有页码  一共有多少条数据 当前是第几页 （还有是否有下一页，是否有上一页，首页，最后一页）
	 * 
 */
 
public class PageUtil {

	private List list;	//查询结果
	private Integer dataSize;       //数据的总条数
	private Integer pageSize;		//每页显示几条数据
	private Integer page_current;	//用户请求页码
	
	private List subList; //对应请求页面的查询结果
	private Integer pageCount;		//总页数
	
	

	
	public PageUtil(List  list, Integer pageSize, Integer page_current) {
		this.list = list;
		
		//每页显示条数属性进行赋值
		if(pageSize == null) {
			this.pageSize = 10;//每页10条数据
			
		} else {
			this.pageSize = pageSize;
		}
		
		//给请求页码属性进行赋值
		if(page_current == null) {
			this.page_current = 1;
			
		} else {
			this.page_current = page_current;
		}
		
		
		//如果list集合是null，怎么办？
		if(list == null) {
			dataSize =null;  //总条数
			subList = null;  //子集数据
			pageCount =null; //总页数
			
		} else if(list !=null && list.size() == 0) {
			
			//如果list集合不是null，但是size为0怎么办？
			dataSize =null;
			subList = null;
			pageCount =null;
		} else {
			//如果list集合有数据？
			dataSize=list.size();

			//对pageCount属性加工取值
			if(dataSize%this.pageSize != 0) {
				//数据跟每页显示数据数不能整除怎么办？
				this.pageCount= dataSize/this.pageSize +1;
				
			} else {
				//数据跟每页显示数据数能整除怎么办？
				this.pageCount= dataSize/this.pageSize;
			}
			
			
			//针对请求页码比总页数还要大的情况
			if(this.page_current> this.pageCount) {
				
				this.page_current = this.pageCount; //满足用户需要，显示最后一页数据
			}
			
			//针对请求页码比第一页小的情况.
			if(this.page_current < 1) {
				this.page_current = 1;
			}
			
			
			//对对应页面的集合属性subList进行赋值运算
			
			//每页10    1:0-9,   2:10-19     3:20-29   4:30-34
			
			if(this.page_current == this.pageCount) { //最后一页
				
				this.subList = this.list.subList((this.page_current-1)*this.pageSize, list.size());

			} else if(this.page_current == 1) {  //第一页
				
				if(this.page_current == this.pageCount) {//第一页就是最后一页的情况   不足一页怎么办？

					this.subList = this.list.subList((this.page_current-1)*this.pageSize, list.size());
				} else { 
					
					this.subList=this.list.subList(0, this.pageSize);
				}
				
			} else {  //中间页
				
				this.subList=this.list.subList((this.page_current-1)*this.pageSize, this.page_current*this.pageSize);
			}
						
		}
	}


	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public Integer getDataSize() {
		return dataSize;
	}
	public void setDataSize(Integer dataSize) {
		this.dataSize = dataSize;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPage_current() {
		return page_current;
	}
	public void setPage_current(Integer page_current) {
		this.page_current = page_current;
	}
	public List getSubList() {
		return subList;
	}
	public void setSubList(List subList) {
		this.subList = subList;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	
	
	
	
	
}
