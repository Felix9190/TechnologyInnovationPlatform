package com.dao;

import java.util.List;

import com.model.BasicInformation;

public interface IBasicInformationDao
{
	public void add(BasicInformation basicInformation);//������Ϣ
	public void update(BasicInformation basicInformation);//�޸����Ϣ
	public BasicInformation load(String username);//�����û�����ѯ���Ϣ
	public List<BasicInformation> load(String str1,String str2,String str3);//�򵥼���
	public List<BasicInformation> load(String[] str1,String[] str2,String[] str3,String[] str4);//�߼�����
	public List<BasicInformation> load();//��ѯ���е����Ϣ
	public List<BasicInformation> lookByEconomyLoad(String str1,String str2);//���������������Ĺ��񾭼�����(2��)
	public List<BasicInformation> lookByEconomyLoad(String str1,String str2,String str3);//���������������Ĺ��񾭼�����(3��)
	
}
