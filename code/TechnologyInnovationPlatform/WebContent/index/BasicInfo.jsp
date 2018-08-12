
<%@page import="com.dao.BasicInformationDaoImpl"%>
<%@page import="com.model.BasicInformation"%>
<%@page import="com.model.User"%>
<%@page import="com.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	UserDaoImpl userDaoImpl = new UserDaoImpl();
	User user = userDaoImpl.load(id);//一定要先查询把所有的列都查出来，然后再用set修改它的值，然后再update更新一下。
	//接收客户端传递过来的参数
	String username = user.getUsername();
	String ptname = request.getParameter("ptname");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String approveddate = year+"-"+month;
	String pzwh = request.getParameter("pzwh");
	String jsly = request.getParameter("jsly");
	String ptjb = request.getParameter("ptjb");
	String szsx = request.getParameter("szsx");
	String ptzzxt = request.getParameter("ptzzxt");
	String frlx = request.getParameter("frlx");
	String gjqk = request.getParameter("gjqk");
	String jjjgj = request.getParameter("jjjgj");
	String fwdzygmjjhy1 = request.getParameter("fwdzygmjjhy1");
	String ssdzyxk1 = request.getParameter("ssdzyxk1");
	String fwdzygmjjhy2 = request.getParameter("fwdzygmjjhy2");
	String ssdzyxk2 = request.getParameter("ssdzyxk2");
	String fwdzygmjjhy3 = request.getParameter("fwdzygmjjhy3");
	String ssdzyxk3 = request.getParameter("ssdzyxk3");
	String ytdwname = request.getParameter("ytdwname");	
	String ytdwzzjgdm = request.getParameter("ytdwzzjgdm");
	String ytdwfrname = request.getParameter("ytdwfrname");
	String bgdh = request.getParameter("bgdh");
	String ytdwlx = request.getParameter("ytdwlx");
	String gjdw = request.getParameter("gjdw");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	String year1 = request.getParameter("year1");
	String month1 = request.getParameter("month1");
	String birth = year1+"-"+month1;
	String zc = request.getParameter("zc");
	String zy = request.getParameter("zy");
	String xl = request.getParameter("xl");
	String xw = request.getParameter("xw");
	String officephone = request.getParameter("officephone");
	String telephone = request.getParameter("telephone");
	String email = request.getParameter("email");
	String ptwzname = request.getParameter("ptwzname");
	String wz = request.getParameter("wz");
	String txdz = request.getParameter("txdz");
	String yb = request.getParameter("yb");
	try
	{
	
	user.setPlatformname(ptname);
	user.setApproveddate(approveddate);
	user.setApprovednumber(pzwh);
	user.setTechnicalfield(jsly);
	userDaoImpl.update(user);
	
	BasicInformationDaoImpl basicInformationDaoImpl = new BasicInformationDaoImpl();
	BasicInformation basicInformation = basicInformationDaoImpl.load(username);
	if(basicInformation==null)
	{
		basicInformation = new BasicInformation();
		basicInformation.setUsername(username);
		basicInformation.setPlatformname(ptname);
		basicInformation.setApproveddate(approveddate);
		basicInformation.setApprovednumber(pzwh);
		basicInformation.setTechnicalfield(jsly);
		basicInformation.setLevel(ptjb);
		basicInformation.setLocation(szsx);
		basicInformation.setOrganization(ptzzxt);
		basicInformation.setLegaltype(frlx);
		basicInformation.setConstructiontype(gjqk);
		basicInformation.setIsjointdevelopment(jjjgj);
		basicInformation.setServicesector1(fwdzygmjjhy1);
		basicInformation.setDiscipline1(ssdzyxk1);
		basicInformation.setServicesector2(fwdzygmjjhy2);
		basicInformation.setDiscipline2(ssdzyxk2);
		basicInformation.setServicesector3(fwdzygmjjhy3);
		basicInformation.setDiscipline3(ssdzyxk3);
		basicInformation.setSupportunitname(ytdwname);
		basicInformation.setCode(ytdwzzjgdm);
		basicInformation.setLegalname(ytdwfrname);
		basicInformation.setSupportunitofficephone(bgdh);
		basicInformation.setSupportunittype(ytdwlx);
		basicInformation.setBuildunit(gjdw);
		basicInformation.setDirectorname(name);
		basicInformation.setSex(sex);
		basicInformation.setBirth(birth);
		basicInformation.setTitle(zc);
		basicInformation.setProfessional(zy);
		basicInformation.setEducation(xl);
		basicInformation.setAcademicdegree(xw);
		basicInformation.setDirectorofficephone(officephone);
		basicInformation.setMobliephone(telephone);
		basicInformation.setEmail(email);
		basicInformation.setWebsite(ptwzname);
		basicInformation.setUrl(wz);
		basicInformation.setAddress(txdz);
		basicInformation.setZipcode(yb);
		basicInformationDaoImpl.add(basicInformation);
	}
	else
	{
		basicInformation.setUsername(username);
		basicInformation.setPlatformname(ptname);
		basicInformation.setApproveddate(approveddate);
		basicInformation.setApprovednumber(pzwh);
		basicInformation.setTechnicalfield(jsly);
		basicInformation.setLevel(ptjb);
		basicInformation.setLocation(szsx);
		basicInformation.setOrganization(ptzzxt);
		basicInformation.setLegaltype(frlx);
		basicInformation.setConstructiontype(gjqk);
		basicInformation.setIsjointdevelopment(jjjgj);
		basicInformation.setServicesector1(fwdzygmjjhy1);
		basicInformation.setDiscipline1(ssdzyxk1);
		basicInformation.setServicesector2(fwdzygmjjhy2);
		basicInformation.setDiscipline2(ssdzyxk2);
		basicInformation.setServicesector3(fwdzygmjjhy3);
		basicInformation.setDiscipline3(ssdzyxk3);
		basicInformation.setSupportunitname(ytdwname);
		basicInformation.setCode(ytdwzzjgdm);
		basicInformation.setLegalname(ytdwfrname);
		basicInformation.setSupportunitofficephone(bgdh);
		basicInformation.setSupportunittype(ytdwlx);
		basicInformation.setBuildunit(gjdw);
		basicInformation.setDirectorname(name);
		basicInformation.setSex(sex);
		basicInformation.setBirth(birth);
		basicInformation.setTitle(zc);
		basicInformation.setProfessional(zy);
		basicInformation.setEducation(xl);
		basicInformation.setAcademicdegree(xw);
		basicInformation.setDirectorofficephone(officephone);
		basicInformation.setMobliephone(telephone);
		basicInformation.setEmail(email);
		basicInformation.setWebsite(ptwzname);
		basicInformation.setUrl(wz);
		basicInformation.setAddress(txdz);
		basicInformation.setZipcode(yb);
		basicInformationDaoImpl.update(basicInformation);
	}
%>
	<input type="hidden" name="id" value="<%=user.getId() %>" />
	<jsp:forward page="BasicInfoSuccess.jsp"></jsp:forward>
<%
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</html>