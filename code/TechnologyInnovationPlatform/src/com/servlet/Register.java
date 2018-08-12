package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDaoImpl;
import com.model.User;

@WebServlet("/Register")
public class Register extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public Register() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//接收参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String platformname = request.getParameter("platformname");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String approveddate = year+"-"+month;
		String approvednumber = request.getParameter("approvednumber");
		String technicalfield = request.getParameter("technicalfield");
		//创建用户对象
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPlatformname(platformname);
		user.setApproveddate(approveddate);
		user.setApprovednumber(approvednumber);
		user.setTechnicalfield(technicalfield);
		//将user起名user
		request.setAttribute("user", user);
		//存到数据库
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		if(userDaoImpl.isExist(username)==true)
		{
			request.getRequestDispatcher("/index/RepeatSubmit.jsp").forward(request, response);
		}
		else
		{
			userDaoImpl.add(user);
			request.getRequestDispatcher("/index/RegisterSuccess.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
