package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Util.DBUtil;
import com.model.User;

public class UserDaoImpl implements IUserDao
{
	public void add(User user)
	{
		Connection connection = DBUtil.getConnection();
		String sql = "insert into t_user(platformname,username,password,usertype,approveddate,approvednumber,technicalfield) values(?,?,?,?,?,?,?)";
		PreparedStatement preparedStatement = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getPlatformname());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setInt(4, user.getUsertype());
			preparedStatement.setString(5, user.getApproveddate());
			preparedStatement.setString(6, user.getApprovednumber());
			preparedStatement.setString(7, user.getTechnicalfield());
			preparedStatement.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}

	public void delete(int id)
	{
		Connection connection = DBUtil.getConnection();
		String sql = "delete from t_user where id = ?";
		PreparedStatement preparedStatement = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}

	public void update(User user) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "update t_user set platformname = ?,username = ?,password = ?,usertype = ?,approveddate = ?,approvednumber = ?,technicalfield = ? "
				+ "where id = ?";
		PreparedStatement preparedStatement = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getPlatformname());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setInt(4, user.getUsertype());
			preparedStatement.setString(5, user.getApproveddate());
			preparedStatement.setString(6, user.getApprovednumber());
			preparedStatement.setString(7, user.getTechnicalfield());
			preparedStatement.setInt(8, user.getId());
			preparedStatement.executeUpdate();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}

	public User load(int id) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_user where id = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				user = new User();
				user.setId(id);
				user.setPlatformname(resultSet.getString("platformname"));
				user.setUsername(resultSet.getString("username"));
				user.setPassword(resultSet.getString("password"));
				user.setUsertype(resultSet.getInt("usertype"));
				user.setApproveddate(resultSet.getString("approveddate"));
				user.setApprovednumber(resultSet.getString("approvednumber"));
				user.setTechnicalfield(resultSet.getString("technicalfield"));
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return user;
	}
	
	public User load(String username) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setPlatformname(resultSet.getString("platformname"));
				user.setUsername(username);
				user.setPassword(resultSet.getString("password"));
				user.setUsertype(resultSet.getInt("usertype"));
				user.setApproveddate(resultSet.getString("approveddate"));
				user.setApprovednumber(resultSet.getString("approvednumber"));
				user.setTechnicalfield(resultSet.getString("technicalfield"));
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return user;
	}

	public boolean isExist(String username)
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select count(*) from t_user where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) 
			{
				if(resultSet.getInt(1)>0)
				{
					return true;
				}
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return false;
	}
	
	public boolean isRight(String username, String password)
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_user where username = ? and password = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				return true;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return false;
	}

	public List<User> load() 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_user";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<User> users = new ArrayList<User>();
		User user = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setPlatformname(resultSet.getString("platformname"));
				user.setUsername(resultSet.getString("username"));
				user.setPassword(resultSet.getString("password"));
				user.setUsertype(resultSet.getInt("usertype"));
				user.setApproveddate(resultSet.getString("approveddate"));
				user.setApprovednumber(resultSet.getString("approvednumber"));
				user.setTechnicalfield(resultSet.getString("technicalfield"));
				users.add(user);
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return users;
	}

	
}
