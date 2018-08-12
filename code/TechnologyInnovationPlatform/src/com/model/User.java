package com.model;

public class User 
{
	private int id;//用户表记录条数
	private String platformname;//平台名称
	private String username;//用户名（平台编号）
	private String password;//密码
	private int usertype;//用户类型(0:普通用户   1:管理员)
	private String approveddate;//批准年月
	private String approvednumber;//批准文号	
	private String technicalfield;//技术领域
	public int getId()
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getPlatformname()
	{
		return platformname;
	}
	public void setPlatformname(String platformname) 
	{
		this.platformname = platformname;
	}
	public String getUsername() 
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public int getUsertype() 
	{
		return usertype;
	}
	public void setUsertype(int usertype) 
	{
		this.usertype = usertype;
	}
	public String getApproveddate() 
	{
		return approveddate;
	}
	public void setApproveddate(String approveddate) 
	{
		this.approveddate = approveddate;
	}
	public String getApprovednumber()
	{
		return approvednumber;
	}
	public void setApprovednumber(String approvednumber)
	{
		this.approvednumber = approvednumber;
	}
	public String getTechnicalfield() 
	{
		return technicalfield;
	}
	public void setTechnicalfield(String technicalfield)
	{
		this.technicalfield = technicalfield;
	}
	
}
