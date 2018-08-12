package com.dao;

import java.util.List;

import com.model.BasicInformation;

public interface IBasicInformationDao
{
	public void add(BasicInformation basicInformation);//添加填报信息
	public void update(BasicInformation basicInformation);//修改填报信息
	public BasicInformation load(String username);//按照用户名查询填报信息
	public List<BasicInformation> load(String str1,String str2,String str3);//简单检索
	public List<BasicInformation> load(String[] str1,String[] str2,String[] str3,String[] str4);//高级检索
	public List<BasicInformation> load();//查询所有的填报信息
	public List<BasicInformation> lookByEconomyLoad(String str1,String str2);//分类浏览：按服务的国民经济类型(2级)
	public List<BasicInformation> lookByEconomyLoad(String str1,String str2,String str3);//分类浏览：按服务的国民经济类型(3级)
	
}
