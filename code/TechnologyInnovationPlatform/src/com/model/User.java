package com.model;

public class User 
{
	private int id;//�û����¼����
	private String platformname;//ƽ̨����
	private String username;//�û�����ƽ̨��ţ�
	private String password;//����
	private int usertype;//�û�����(0:��ͨ�û�   1:����Ա)
	private String approveddate;//��׼����
	private String approvednumber;//��׼�ĺ�	
	private String technicalfield;//��������
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
