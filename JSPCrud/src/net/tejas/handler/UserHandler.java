package net.tejas.handler;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tejas.bean.UserBean;
import net.tejas.dao.UserDao;

public class UserHandler extends HttpServlet {
	private UserDao dao;

	public UserHandler() {
		super();
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String redirect = "";
		String uId = request.getParameter("userid");
		String operation = request.getParameter("operation");
		if (operation.equalsIgnoreCase("insert")) {
			int id = Integer.parseInt(uId);
			UserBean user = new UserBean();
			user.setId(id);
			user.setfName(request.getParameter("firstName"));
			user.setlName(request.getParameter("lastName"));
			user.seteducation(request.getParameter("education"));
			user.setcountry(request.getParameter("country"));
			user.setcity(request.getParameter("city"));
			
			dao.addUser(user);
			redirect = "/listUser.jsp";
			//request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Added Successfully");

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		} else if (operation.equalsIgnoreCase("delete")) {
			String userId = request.getParameter("userId");
			int uid = Integer.parseInt(userId);
			dao.removeUser(uid);
			redirect = "/listUser.jsp";
			//request.setAttribute("users", dao.getAllUsers());
			System.out.println("Record Deleted Successfully");

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		} else if (operation.equalsIgnoreCase("editform")) {
			redirect = "/edit.jsp";

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		} else if (operation.equalsIgnoreCase("edit")) {
			String userId = request.getParameter("userId");
			int uid = Integer.parseInt(userId);
			UserBean user = new UserBean();
			user.setId(uid);
			user.setfName(request.getParameter("firstName"));
			user.setlName(request.getParameter("lastName"));
			user.seteducation(request.getParameter("education"));
			user.setcountry(request.getParameter("country"));
			user.setcity(request.getParameter("city"));
			dao.editUser(user);
			//request.setAttribute("user", user);
			redirect = "/listUser.jsp";
			System.out.println("Record updated Successfully");

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		} else if (operation.equalsIgnoreCase("listUser")) {
			redirect = "/listUser.jsp";
			//request.setAttribute("users", dao.getAllUsers());

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		} else {
			redirect = "/user.jsp";

			RequestDispatcher rd = request.getRequestDispatcher(redirect);
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}