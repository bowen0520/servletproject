package cn.jxust;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Finance extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("GBK");
		PrintWriter out = response.getWriter();
		
		Cookie[] cs = request.getCookies();
		int i = findCookie("finance",cs);
		if(i != -1){
			int a = Integer.parseInt(cs[i].getValue());
			Cookie c = new Cookie(cs[i].getName(), String.valueOf(a+1));
			c.setMaxAge(7*24*60*60);
			response.addCookie(c);
		}else{
			Cookie c = new Cookie("finance", "1");
			c.setMaxAge(7*24*60*60);
			response.addCookie(c);
		}
		out.println("欢迎登陆财经界面");
	}
	
	public int findCookie(String name,Cookie[] cookies){
		for(int i = 0;i < cookies.length;i++){
			if(cookies[i].getName().equals(name)){
				return i;
			}
		}
		return -1;
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
