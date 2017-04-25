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
		
            //��ô�ҳ�����ύ����Ϣ  
            String username = req.getParameter("username");
            String password = req.getParameter("password");   
            String identity = req.getParameter("identity");  
           
            	//���ݵ�ǰ�û����û��������õ���ѯ���ݿ�õ�����  
                String temp = getPassword(req, res, username, identity);  
                    
                if (password.equals(temp))  
                	//���û�����֤ͨ����ͨ���˺�������ת����ͬ����ʾҳ��  
                	goo(req, res, identity);  
                else {  
                	message = "�û������������";  
                	JOptionPane.showConfirmDialog(null, message,"��ʾ",JOptionPane.DEFAULT_OPTION);
                	//������ʱ���ѳ�����Ϣ��ʾ���û�������ת������ҳ����ȥ  
                	doError(req, res, message);  
                }
    }  
	
            /** 
            * ���û�����֤ͨ����ͨ���˺�������ת����ͬ����ʾҳ�� 
            */  
	public void goo(HttpServletRequest req, HttpServletResponse res, String identity) throws ServletException, IOException {  
		
			if (identity.equals("student")) {//�����ѧ����¼   
            	res.sendRedirect("student_research.jsp");
            }  
			
            if (identity.equals("teacher")) {//����ǽ�ʦ��¼   
            	res.sendRedirect("teacher.jsp");
            }  
            
            if (identity.equals("admin")) {//����ǹ���Ա��¼  
            	res.sendRedirect("admin.jsp");
            }  
     }  
	
	/** 
     * ���ݵ�ǰ�û���username�����õ���ѯ���ݿ�õ����� 
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
      * ������ʱ���ѳ�����Ϣ��ʾ���û�������ת������ҳ����ȥ 
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

