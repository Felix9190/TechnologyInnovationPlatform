package com.dao;

import java.util.List;

import com.model.User;

public interface IUserDao 
{
	public void add(User user);//����û�
	public void delete(int id);//ɾ���û�
	public void update(User user);//�޸��û�
	public User load(int id);//����id��ѯ�û�
	public User load(String username);//�����û�����ѯ�û�
	public boolean isExist(String username);//��֤�û��Ƿ����
	public boolean isRight(String username,String password);//��֤�û������Ƿ���ȷ
	public List<User> load();//��ѯ�����û�
}
