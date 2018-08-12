package com.model;

public class BasicInformation 
{
	private int id;//基本信息表记录条数
	private String platformname;//平台名称
	private String username;//用户名（平台编号）
	private String approveddate;//批准年月
	private String approvednumber;//批准文号	
	private String technicalfield;//技术领域
	private String level;//平台级别
	private String location;//所在市县
	private String organization;//平台组织形态
	private String legaltype;//法人类型
	private String constructiontype;//建设类型
	private String isjointdevelopment;//是否属于京津冀共建
	private String servicesector1;//服务的主要国民经济行业1
	private String servicesector2;//服务的主要国民经济行业2
	private String servicesector3;//服务的主要国民经济行业3
	private String discipline1;//所属的主要学科1
	private String discipline2;//所属的主要学科2
	private String discipline3;//所属的主要学科3
	private String supportunitname;//依托单位名称
	private String code;//依托单位组织机构代码
	private String legalname;//依托单位法人代表姓名
	private String supportunitofficephone;//依托单位办公电话
	private String supportunittype;//依托单位类型
	private String buildunit;//共建单位
	private String directorname;//平台主任姓名
	private String sex;//性别
	private String birth;//出生年月
	private String title;//职称
	private String professional;//所学专业
	private String education;//学历
	private String academicdegree;//学位
	private String directorofficephone;//平台主任办公电话
	private String mobliephone;//手机
	private String email;//E-mail
	private String website;//平台网站名称
	private String url;//网址
	private String address;//平台通讯地址
	private String zipcode;//邮编
	private int auditsituation;//审核情况(0:待审核  1:审核通过  -1:审核未通过 )
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
	public String getLevel()
	{
		return level;
	}
	public void setLevel(String level) 
	{
		this.level = level;
	}
	public String getLocation()
	{
		return location;
	}
	public void setLocation(String location)
	{
		this.location = location;
	}
	public String getOrganization() 
	{
		return organization;
	}
	public void setOrganization(String organization)
	{
		this.organization = organization;
	}
	public String getLegaltype() 
	{
		return legaltype;
	}
	public void setLegaltype(String legaltype) 
	{
		this.legaltype = legaltype;
	}
	public String getConstructiontype() 
	{
		return constructiontype;
	}
	public void setConstructiontype(String constructiontype)
	{
		this.constructiontype = constructiontype;
	}
	public String getIsIsjointdevelopment() 
	{
		return isjointdevelopment;
	}
	public void setIsjointdevelopment(String isjointdevelopment)
	{
		this.isjointdevelopment = isjointdevelopment;
	}
	public String getServicesector1()
	{
		return servicesector1;
	}
	public void setServicesector1(String servicesector1)
	{
		this.servicesector1 = servicesector1;
	}
	public String getServicesector2()
	{
		return servicesector2;
	}
	public void setServicesector2(String servicesector2)
	{
		this.servicesector2 = servicesector2;
	}
	public String getServicesector3()
	{
		return servicesector3;
	}
	public void setServicesector3(String servicesector3)
	{
		this.servicesector3 = servicesector3;
	}
	public String getDiscipline1() 
	{
		return discipline1;
	}
	public void setDiscipline1(String discipline1) 
	{
		this.discipline1 = discipline1;
	}
	public String getDiscipline2() 
	{
		return discipline2;
	}
	public void setDiscipline2(String discipline2) 
	{
		this.discipline2 = discipline2;
	}
	public String getDiscipline3() 
	{
		return discipline3;
	}
	public void setDiscipline3(String discipline3) 
	{
		this.discipline3 = discipline3;
	}
	public String getSupportunitname() 
	{
		return supportunitname;
	}
	public void setSupportunitname(String supportunitname) 
	{
		this.supportunitname = supportunitname;
	}
	public String getCode() 
	{
		return code;
	}
	public void setCode(String code) 
	{
		this.code = code;
	}
	public String getLegalname() 
	{
		return legalname;
	}
	public void setLegalname(String legalname) 
	{
		this.legalname = legalname;
	}
	public String getSupportunitofficephone() 
	{
		return supportunitofficephone;
	}
	public void setSupportunitofficephone(String supportunitofficephone) 
	{
		this.supportunitofficephone = supportunitofficephone;
	}
	public String getSupportunittype()
	{
		return supportunittype;
	}
	public void setSupportunittype(String supportunittype) 
	{
		this.supportunittype = supportunittype;
	}
	public String getBuildunit() 
	{
		return buildunit;
	}
	public void setBuildunit(String buildunit) 
	{
		this.buildunit = buildunit;
	}
	public String getDirectorname()
	{
		return directorname;
	}
	public void setDirectorname(String directorname)
	{
		this.directorname = directorname;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String sex) 
	{
		this.sex = sex;
	}
	public String getBirth()
	{
		return birth;
	}
	public void setBirth(String birth) 
	{
		this.birth = birth;
	}
	public String getTitle() 
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getProfessional() 
	{
		return professional;
	}
	public void setProfessional(String professional)
	{
		this.professional = professional;
	}
	public String getEducation() 
	{
		return education;
	}
	public void setEducation(String education)
	{
		this.education = education;
	}
	public String getAcademicdegree() 
	{
		return academicdegree;
	}
	public void setAcademicdegree(String academicdegree) 
	{
		this.academicdegree = academicdegree;
	}
	public String getDirectorofficephone() 
	{
		return directorofficephone;
	}
	public void setDirectorofficephone(String directorofficephone) 
	{
		this.directorofficephone = directorofficephone;
	}
	public String getMobliephone() 
	{
		return mobliephone;
	}
	public void setMobliephone(String mobliephone) 
	{
		this.mobliephone = mobliephone;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getWebsite()
	{
		return website;
	}
	public void setWebsite(String website) 
	{
		this.website = website;
	}
	public String getUrl() 
	{
		return url;
	}
	public void setUrl(String url)
	{
		this.url = url;
	}
	public String getAddress() 
	{
		return address;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}
	public String getZipcode() 
	{
		return zipcode;
	}
	public void setZipcode(String zipcode) 
	{
		this.zipcode = zipcode;
	}

	public int getAuditsituation() 
	{
		return auditsituation;
	}
	public void setAuditsituation(int auditsituation) 
	{
		this.auditsituation = auditsituation;
	}
}
