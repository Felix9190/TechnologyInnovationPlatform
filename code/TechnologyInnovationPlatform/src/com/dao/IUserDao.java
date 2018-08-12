package com.dao;

import java.util.List;

import com.model.User;

public interface IUserDao 
{
	public void add(User user);//添加用户
	public void delete(int id);//删除用户
	public void update(User user);//修改用户
	public User load(int id);//根据id查询用户
	public User load(String username);//根据用户名查询用户
	public boolean isExist(String username);//验证用户是否存在
	public boolean isRight(String username,String password);//验证用户密码是否正确
	public List<User> load();//查询所有用户
}
