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

public class DeleteTeacher extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
            
		  	res.setContentType("text/html");  
		  	req.setCharacterEncoding("UTF-8");  
		  	res.setCharacterEncoding("UTF-8");
		
			String message = null;  
		
            String username = req.getParameter("username");  
            String identity = "teacher";  

            String temp = getIdentity(req, res, username, identity);  
                    
            if (identity.equals(temp))  {
            	delete(res, username, identity);
            }
            else {  
            	message = "您要删除的用户不存在！";  
                JOptionPane.showConfirmDialog(null, message,"提示",JOptionPane.DEFAULT_OPTION);  
                doError(req, res, message);  
            }
    }  

	public void delete(HttpServletResponse res, String username, String identity) {  
		
		SqlBean db = new SqlBean(); 
        int row=0;

	 	String sql = "delete from user where username='" + username + "'";  

	 	try {  
	 		row = db.executeDelete(sql);  
	 		if(row == 1){
	 			JOptionPane.showConfirmDialog(null, "删除成功！","提示",JOptionPane.DEFAULT_OPTION);
	 			res.sendRedirect("delete_teacher.jsp");
	 		}		
	 	} catch (Exception e) {  
	 		System.out.print(e.toString());  
	 	}  			 
     }  
	
     public String getIdentity(HttpServletRequest req, HttpServletResponse res, String username, String identity) throws ServletException, IOException {  
    	 	
    	 	SqlBean db = new SqlBean();  
    	 	String sql = "select identity from user where username='" + username + "'";  
    	 	String idy = ""; 
    	 	
    	 	try {  
    	 		ResultSet rs = db.executeQuery(sql);  
    	 		if (rs.next()) {  
    	 			idy = rs.getString("identity");  
    	 		}  
    	 	} catch (Exception e) {  
    	 		System.out.print(e.toString());  
    	 	}  
    	 	
    	 	return idy;  
     }   
      
      public void doError(HttpServletRequest req, HttpServletResponse res, String str) throws ServletException, IOException {  
    	  req.setAttribute("problem", str);  
    	  RequestDispatcher rd = getServletContext().getRequestDispatcher("/delete_teacher.jsp");  
    	  rd.forward(req, res);  
      }  
      
      public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  
    	  doPost(req, res);  
      }  
}       


