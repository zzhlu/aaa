package servlet;

import java.sql.*;  
import java.io.IOException;  

import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;    
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.swing.JOptionPane;

import bean.SqlBean;

public class LoginConfirm extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
            String message = null;  
		
            //获得从页面中提交的信息  
            String username = req.getParameter("username");
            String password = req.getParameter("password");   
            String identity = req.getParameter("identity");  
           
            	//根据当前用户的用户名，来得到查询数据库得到密码  
                String temp = getPassword(req, res, username, identity);  
                    
                if (password.equals(temp))  
                	//当用户的认证通过后，通过此函数来跳转到不同的显示页面  
                	goo(req, res, identity);  
                else {  
                	message = "用户名或密码错误！";  
                	JOptionPane.showConfirmDialog(null, message,"提示",JOptionPane.DEFAULT_OPTION);
                	//当出错时，把出错信息显示给用户，并跳转到出错页面中去  
                	doError(req, res, message);  
                }
    }  
	
            /** 
            * 当用户的认证通过后，通过此函数来跳转到不同的显示页面 
            */  
	public void goo(HttpServletRequest req, HttpServletResponse res, String identity) throws ServletException, IOException {  
		
			if (identity.equals("student")) {//如果是学生登录   
            	res.sendRedirect("student_research.jsp");
            }  
			
            if (identity.equals("teacher")) {//如果是教师登录   
            	res.sendRedirect("teacher.jsp");
            }  
            
            if (identity.equals("admin")) {//如果是管理员登录  
            	res.sendRedirect("admin.jsp");
            }  
     }  
	
	/** 
     * 根据当前用户的username，来得到查询数据库得到密码 
     */  
     public String getPassword(HttpServletRequest req, HttpServletResponse res, String username, String identity) throws ServletException, IOException {  
    	 	SqlBean db = new SqlBean();  
    	 	String pw = "";  
    	 	String sql = "select password from user where username='" + username + "' and identity='" + identity + "'";  
    	 	
    	 	try {  
    	 		ResultSet rs = db.executeQuery(sql);  
    	 		if (rs.next()) {  
    	 			pw = rs.getString("password");  
    	 		}  
    	 	} catch (Exception e) {  
    	 		System.out.print(e.toString());  
    	 	}  
    	 	
    	 	return pw;  
     }   
     
     /** 
      * 当出错时，把出错信息显示给用户，并跳转到出错页面中去 
      */  
      public void doError(HttpServletRequest req, HttpServletResponse res, String str) throws ServletException, IOException {  
    	  req.setAttribute("problem", str);  
    	  RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");  
    	  rd.forward(req, res);  
      }  
      
      public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
    	  doPost(req, res);  
      }  
}       

