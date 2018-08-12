package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Util.DBUtil;
import com.model.BasicInformation;

public class BasicInformationDaoImpl implements IBasicInformationDao
{

	public void add(BasicInformation basicInformation) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "insert into t_basicinformation(platformname,username,approveddate,approvednumber,technicalfield,"
				+ "level,location,organization,legaltype,constructiontype,isjointdevelopment,servicesector1,discipline1,"
				+ "supportunitname,code,legalname,supportunitofficephone,supportunittype,buildunit,directorname,"
				+ "sex,birth,title,professional,education,academicdegree,directorofficephone,mobliephone,email,"
				+ "website,url,address,zipcode,auditsituation,servicesector2,discipline2,servicesector3,discipline3) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
		PreparedStatement preparedStatement = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, basicInformation.getPlatformname());
			preparedStatement.setString(2, basicInformation.getUsername());
			preparedStatement.setString(3, basicInformation.getApproveddate());
			preparedStatement.setString(4, basicInformation.getApprovednumber());
			preparedStatement.setString(5, basicInformation.getTechnicalfield());
			preparedStatement.setString(6, basicInformation.getLevel());
			preparedStatement.setString(7, basicInformation.getLocation());
			preparedStatement.setString(8, basicInformation.getOrganization());
			preparedStatement.setString(9, basicInformation.getLegaltype());
			preparedStatement.setString(10, basicInformation.getConstructiontype());
			preparedStatement.setString(11, basicInformation.getIsIsjointdevelopment());
			preparedStatement.setString(12, basicInformation.getServicesector1());
			preparedStatement.setString(13, basicInformation.getDiscipline1());
			preparedStatement.setString(14, basicInformation.getSupportunitname());
			preparedStatement.setString(15, basicInformation.getCode());
			preparedStatement.setString(16, basicInformation.getLegalname());
			preparedStatement.setString(17, basicInformation.getSupportunitofficephone());
			preparedStatement.setString(18, basicInformation.getSupportunittype());
			preparedStatement.setString(19, basicInformation.getBuildunit());
			preparedStatement.setString(20, basicInformation.getDirectorname());
			preparedStatement.setString(21, basicInformation.getSex());
			preparedStatement.setString(22, basicInformation.getBirth());
			preparedStatement.setString(23, basicInformation.getTitle());
			preparedStatement.setString(24, basicInformation.getProfessional());
			preparedStatement.setString(25, basicInformation.getEducation());
			preparedStatement.setString(26, basicInformation.getAcademicdegree());
			preparedStatement.setString(27, basicInformation.getDirectorofficephone());
			preparedStatement.setString(28, basicInformation.getMobliephone());
			preparedStatement.setString(29, basicInformation.getEmail());
			preparedStatement.setString(30, basicInformation.getWebsite());
			preparedStatement.setString(31, basicInformation.getUrl());
			preparedStatement.setString(32, basicInformation.getAddress());
			preparedStatement.setString(33, basicInformation.getZipcode());
			preparedStatement.setInt(34, basicInformation.getAuditsituation());
			preparedStatement.setString(35, basicInformation.getServicesector2());
			preparedStatement.setString(36, basicInformation.getDiscipline2());
			preparedStatement.setString(37, basicInformation.getServicesector3());
			preparedStatement.setString(38, basicInformation.getDiscipline3());
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


	public void update(BasicInformation basicInformation) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "update t_basicinformation set platformname = ?,username = ?,approveddate = ?,"
				+ "approvednumber = ?,technicalfield = ?,level = ?,location = ?,organization = ?,"
				+ "legaltype = ?,constructiontype = ?,isjointdevelopment = ?,servicesector1 = ?,"
				+ "discipline1 = ?, supportunitname = ?,code = ?,legalname = ?,supportunitofficephone = ?,"
				+ "supportunittype = ?,buildunit = ?,directorname = ?,sex = ?,birth = ?,title = ?,professional = ?,"
				+ "education = ?,academicdegree = ?,directorofficephone = ?,mobliephone = ?,email = ?,"
				+ "website = ?,url = ?,address = ?,zipcode = ?,auditsituation = ?,servicesector2 = ?,"
				+ "discipline2 = ?,servicesector3 = ?,discipline3 = ? where id = ?"; 
				
		PreparedStatement preparedStatement = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, basicInformation.getPlatformname());
			preparedStatement.setString(2, basicInformation.getUsername());
			preparedStatement.setString(3, basicInformation.getApproveddate());
			preparedStatement.setString(4, basicInformation.getApprovednumber());
			preparedStatement.setString(5, basicInformation.getTechnicalfield());
			preparedStatement.setString(6, basicInformation.getLevel());
			preparedStatement.setString(7, basicInformation.getLocation());
			preparedStatement.setString(8, basicInformation.getOrganization());
			preparedStatement.setString(9, basicInformation.getLegaltype());
			preparedStatement.setString(10, basicInformation.getConstructiontype());
			preparedStatement.setString(11, basicInformation.getIsIsjointdevelopment());
			preparedStatement.setString(12, basicInformation.getServicesector1());
			preparedStatement.setString(13, basicInformation.getDiscipline1());
			preparedStatement.setString(14, basicInformation.getSupportunitname());
			preparedStatement.setString(15, basicInformation.getCode());
			preparedStatement.setString(16, basicInformation.getLegalname());
			preparedStatement.setString(17, basicInformation.getSupportunitofficephone());
			preparedStatement.setString(18, basicInformation.getSupportunittype());
			preparedStatement.setString(19, basicInformation.getBuildunit());
			preparedStatement.setString(20, basicInformation.getDirectorname());
			preparedStatement.setString(21, basicInformation.getSex());
			preparedStatement.setString(22, basicInformation.getBirth());
			preparedStatement.setString(23, basicInformation.getTitle());
			preparedStatement.setString(24, basicInformation.getProfessional());
			preparedStatement.setString(25, basicInformation.getEducation());
			preparedStatement.setString(26, basicInformation.getAcademicdegree());
			preparedStatement.setString(27, basicInformation.getDirectorofficephone());
			preparedStatement.setString(28, basicInformation.getMobliephone());
			preparedStatement.setString(29, basicInformation.getEmail());
			preparedStatement.setString(30, basicInformation.getWebsite());
			preparedStatement.setString(31, basicInformation.getUrl());
			preparedStatement.setString(32, basicInformation.getAddress());
			preparedStatement.setString(33, basicInformation.getZipcode());
			preparedStatement.setInt(34, basicInformation.getAuditsituation());
			preparedStatement.setString(35, basicInformation.getServicesector2());
			preparedStatement.setString(36, basicInformation.getDiscipline2());
			preparedStatement.setString(37, basicInformation.getServicesector3());
			preparedStatement.setString(38, basicInformation.getDiscipline3());
			preparedStatement.setInt(39, basicInformation.getId());
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
	
	public List<BasicInformation> load() 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();
		BasicInformation basicInformation = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
				basicInformations.add(basicInformation);
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
		return basicInformations;
	}
	public List<BasicInformation> load(String str1, String str2,String str3) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation ";
		if(str1.equals("平台名称"))
		{
			if(str3.equals("精确"))
			{
				sql +="where platformname = '"+str2+"' ";
			}
			else
			{
				sql +="where platformname like '%"+str2+"%' ";
			}
		}
		else if(str1.equals("平台编号"))
		{
			if(str3.equals("精确"))
			{
				sql +="where username = '"+str2+"' ";
			}
			else
			{
				sql +="where username like '%"+str2+"%' ";
			}
		}
		else if(str1.equals("技术领域"))
		{
			if(str3.equals("精确"))
			{
				sql +="where technicalfield = '"+str2+"' ";
			}
			else
			{
				sql +="where technicalfield like '%"+str2+"%' ";
			}
		}
		else if(str1.equals("平台级别"))
		{
			if(str3.equals("精确"))
			{
				sql +="where level = '"+str2+"' ";
			}
			else
			{
				sql +="where level like '%"+str2+"%' ";
			}
		}
		else
		{
			if(str3.equals("精确"))
			{
				sql +="where location = '"+str2+"' ";
			}
			else
			{
				sql +="where location like '%"+str2+"%' ";
			}
		}
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();
		BasicInformation basicInformation = null;
		try
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
				basicInformations.add(basicInformation);
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
		return basicInformations;
	}

	public BasicInformation load(String username) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		BasicInformation basicInformation = null;
		try 
		{
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
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
		return basicInformation;
	}
	public List<BasicInformation> load(String[] str1, String[] str2, String[] str3, String[] str4) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation where 1=1 ";
		if(str2[0]!=null)
		{
			int i = 0;
			if(str1[i].equals("平台名称"))
			{
					if(str3[i].equals("精确"))
					{
						sql +="and platformname = '"+str2[i]+"' ";
					}
					else
					{
						sql +="and platformname like '%"+str2[i]+"%' ";
					}
				
			}
			else if(str1[i].equals("平台编号"))
			{
					if(str3[i].equals("精确"))
					{
						sql +="and username = '"+str2[i]+"' ";
					}
					else
					{
						sql +="and username like '%"+str2[i]+"%' ";
					}
			}
			else if(str1[i].equals("技术领域"))
			{
					if(str3[i].equals("精确"))
					{
						sql +="and technicalfield = '"+str2[i]+"' ";
					}
					else
					{
						sql +="and technicalfield like '%"+str2[i]+"%' ";
					}		
			}
			else if(str1[i].equals("平台级别"))
			{
					if(str3[i].equals("精确"))
					{
						sql +="and level = '"+str2[i]+"' ";
					}
					else
					{
						sql +="and level like '%"+str2[i]+"%' ";
					}
			}
			else
			{
					if(str3[i].equals("精确"))
					{
						sql +="and location = '"+str2[i]+"' ";
					}
					else
					{
						sql +="and location like '%"+str2[i]+"%' ";
					}
			}
		
		}
		for(int i=1;i<5;i++)
		{
			System.out.println("i="+i);
			if(str2[i]!=null)
			{
				if(str1[i].equals("平台名称"))
				{
					if(str4[i-1].equals("并且"))
					{
						if(str3[i].equals("精确"))
						{
							sql +="and platformname = '"+str2[i]+"' ";
						}
						else
						{
							sql +="and platformname like '%"+str2[i]+"%' ";
						}
					}
					else
					{

						if(str3[i].equals("精确"))
						{
							sql +="or platformname = '"+str2[i]+"' ";
						}
						else
						{
							sql +="or platformname like '%"+str2[i]+"%' ";
						}
					
					}
					
				}
				else if(str1[i].equals("平台编号"))
				{
					if(str4[i-1].equals("并且"))
					{
						if(str3[i].equals("精确"))
						{
							sql +="and username = '"+str2[i]+"' ";
						}
						else
						{
							sql +="and username like '%"+str2[i]+"%' ";
						}
					}
					else
					{

						if(str3[i].equals("精确"))
						{
							sql +="or username = '"+str2[i]+"' ";
						}
						else
						{
							sql +="or username like '%"+str2[i]+"%' ";
						}
					
					}
					
				}
				else if(str1[i].equals("技术领域"))
				{
					if(str4[i-1].equals("并且"))
					{
						if(str3[i].equals("精确"))
						{
							sql +="and technicalfield = '"+str2[i]+"' ";
						}
						else
						{
							sql +="and technicalfield like '%"+str2[i]+"%' ";
						}
					}
					else
					{

						if(str3[i].equals("精确"))
						{
							sql +="or technicalfield = '"+str2[i]+"' ";
						}
						else
						{
							sql +="or technicalfield like '%"+str2[i]+"%' ";
						}
					
					}
					
				}
				else if(str1[i].equals("平台级别"))
				{
					if(str4[i].equals("并且"))
					{
						if(str3[i-1].equals("精确"))
						{
							sql +="and level = '"+str2[i]+"' ";
						}
						else
						{
							sql +="and level like '%"+str2[i]+"%' ";
						}
					}
					else
					{

						if(str3[i].equals("精确"))
						{
							sql +="or level = '"+str2[i]+"' ";
						}
						else
						{
							sql +="or level like '%"+str2[i]+"%' ";
						}
					
					}
					
				}
				else
				{
					if(str4[i-1].equals("并且"))
					{
						if(str3[i].equals("精确"))
						{
							sql +="and location = '"+str2[i]+"' ";
						}
						else
						{
							sql +="and location like '%"+str2[i]+"%' ";
						}
					}
					else
					{

						if(str3[i].equals("精确"))
						{
							sql +="or location = '"+str2[i]+"' ";
						}
						else
						{
							sql +="or location like '%"+str2[i]+"%' ";
						}
					
					}
					
				}
			}
			
		}
		
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();
		BasicInformation basicInformation = null;
		try
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
				basicInformations.add(basicInformation);
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
		return basicInformations;
	}

	public List<BasicInformation> lookByEconomyLoad(String str1, String str2, String str3) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation where servicesector1 = '"+str1+"' and servicesector2 = '"+str2+"' and servicesector3 = '"+str3+"'";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();
		BasicInformation basicInformation = null;
		try
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
				basicInformations.add(basicInformation);
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
		return basicInformations;
	}

	public List<BasicInformation> lookByEconomyLoad(String str1, String str2) 
	{
		Connection connection = DBUtil.getConnection();
		String sql = "select * from t_basicinformation where servicesector1 = '"+str1+"' and servicesector2 = '"+str2+"'";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<BasicInformation> basicInformations = new ArrayList<BasicInformation>();
		BasicInformation basicInformation = null;
		try
		{
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next())
			{
				basicInformation = new BasicInformation();
				basicInformation.setId(resultSet.getInt("id"));
				basicInformation.setPlatformname(resultSet.getString("platformname"));
				basicInformation.setUsername(resultSet.getString("username"));
				basicInformation.setApproveddate(resultSet.getString("approveddate"));
				basicInformation.setApprovednumber(resultSet.getString("approvednumber"));
				basicInformation.setTechnicalfield(resultSet.getString("technicalfield"));
				basicInformation.setLevel(resultSet.getString("level"));
				basicInformation.setLocation(resultSet.getString("location"));
				basicInformation.setOrganization(resultSet.getString("organization"));
				basicInformation.setLegaltype(resultSet.getString("legaltype"));
				basicInformation.setConstructiontype(resultSet.getString("constructiontype"));
				basicInformation.setIsjointdevelopment(resultSet.getString("isjointdevelopment"));
				basicInformation.setServicesector1(resultSet.getString("servicesector1"));
				basicInformation.setDiscipline1(resultSet.getString("discipline1"));
				basicInformation.setServicesector2(resultSet.getString("servicesector2"));
				basicInformation.setDiscipline2(resultSet.getString("discipline2"));
				basicInformation.setServicesector3(resultSet.getString("servicesector3"));
				basicInformation.setDiscipline3(resultSet.getString("discipline3"));
				basicInformation.setSupportunitname(resultSet.getString("supportunitname"));
				basicInformation.setCode(resultSet.getString("code"));
				basicInformation.setLegalname(resultSet.getString("legalname"));
				basicInformation.setSupportunitofficephone(resultSet.getString("supportunitofficephone"));
				basicInformation.setSupportunittype(resultSet.getString("supportunittype"));
				basicInformation.setBuildunit(resultSet.getString("buildunit"));
				basicInformation.setDirectorname(resultSet.getString("directorname"));
				basicInformation.setSex(resultSet.getString("sex"));
				basicInformation.setBirth(resultSet.getString("birth"));
				basicInformation.setTitle(resultSet.getString("title"));
				basicInformation.setProfessional(resultSet.getString("professional"));
				basicInformation.setEducation(resultSet.getString("education"));
				basicInformation.setAcademicdegree(resultSet.getString("academicdegree"));
				basicInformation.setDirectorofficephone(resultSet.getString("directorofficephone"));
				basicInformation.setMobliephone(resultSet.getString("mobliephone"));
				basicInformation.setEmail(resultSet.getString("email"));
				basicInformation.setWebsite(resultSet.getString("website"));
				basicInformation.setUrl(resultSet.getString("url"));
				basicInformation.setAddress(resultSet.getString("address"));
				basicInformation.setZipcode(resultSet.getString("zipcode"));
				basicInformation.setAuditsituation(resultSet.getInt("auditsituation"));
				basicInformations.add(basicInformation);
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
		return basicInformations;
	}
}
