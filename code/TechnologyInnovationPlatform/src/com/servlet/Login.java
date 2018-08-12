package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDaoImpl;
import com.model.User;

@WebServlet("/Login")
public class Login extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
    public Login() 
    {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setCharacterEncoding("GBK");
		PrintWriter printWriter = response.getWriter();
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(userDaoImpl.isExist(username)==false)
		{
			printWriter.println("<html>");
			printWriter.print("<script>alert('您输入的用户名有误，请重新输入');</script>");
			printWriter.print("<script>window.location.href='Login.jsp'</script>");
			printWriter.println("</html>");
		}
		else if(userDaoImpl.isRight(username,password)==false)
		{
			printWriter.println("<html>");
			printWriter.print("<script>alert('您输入的密码有误，请重新输入');</script>");
			printWriter.print("<script>window.location.href='Login.jsp'</script>");
			printWriter.println("</html>");
		}
		else
		{
			User user = userDaoImpl.load(username);
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			if(user.getUsertype()==0)
			{
				response.sendRedirect("BasicInfoInput.jsp");
			}
			else
			{
				response.sendRedirect("Admin.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
