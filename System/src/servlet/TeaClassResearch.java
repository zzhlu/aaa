package servlet;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.io.IOException;  

import javax.servlet.ServletException;    
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.swing.JOptionPane;

import bean.SqlBean;

public class TeaClassResearch extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  

		  res.setContentType("text/html");  
		  req.setCharacterEncoding("UTF-8");  
		  res.setCharacterEncoding("UTF-8");
		  
			//获得从页面中提交的信息  
            String courseName = req.getParameter("courseName");
            String majorClass = req.getParameter("majorClass");   
            String teacherName = req.getParameter("teacherName");
            String instituteName = req.getParameter("instituteName"); 
            String duty = req.getParameter("duty");
            String courseProperty = req.getParameter("courseProperty");
            
            int total = Integer.parseInt(req.getParameter("total"));
            int actual = Integer.parseInt(req.getParameter("actual"));   
            int late = Integer.parseInt(req.getParameter("late"));
            int leaveEarly = Integer.parseInt(req.getParameter("leaveEarly")); 
            int turnover = Integer.parseInt(req.getParameter("turnover"));
            
            Date dNow = new Date();                    
            SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd HH:mm:ss");
            String date = ft.format(dNow).toString();
            
            String question1 = req.getParameter("question1");
            String question2 = req.getParameter("question2");
            String question3 = req.getParameter("question3");   
            String question4 = req.getParameter("question4");
            String question5 = req.getParameter("question5");
            String question6 = req.getParameter("question6");   
            String question7 = req.getParameter("question7");
            String question8 = req.getParameter("question8");
            String question9 = req.getParameter("question9");   
            String question10 = req.getParameter("question10");
            String question11 = req.getParameter("question11");
            String question12 = req.getParameter("question12");   
            String question13 = req.getParameter("question13");
            String question14 = req.getParameter("question14");
            String question15 = req.getParameter("question15");   
            String question16 = req.getParameter("question16");
            String question17 = req.getParameter("question17");
            String question18 = req.getParameter("question18");   
            String question19 = req.getParameter("question19");
            String question20 = req.getParameter("question20");
            String question21 = req.getParameter("question21");
            String question22 = req.getParameter("question22");
            
            int score = Integer.parseInt(req.getParameter("score"));
            String condition = req.getParameter("condition");
            String suggest = req.getParameter("suggest");
            
            SqlBean db = new SqlBean(); 
            int row=0;

    	 	String sql = "insert into teacher_class_research values('" + courseName + "','" + majorClass + "','" + 
    	 			teacherName + "','" + instituteName + "','" + duty + "','" + courseProperty + "','" + total + "','" + 
    	 			actual + "','" + late + "','" + leaveEarly + "','" + turnover + "','" + date + "','" + question1 + "','" + 
    	 			question2 + "','" + question3 + "','" + question4 + "','" + question5 + "','" + question6 + "','" + 
    	 			question7 + "','" + question8 + "','" + question9 + "','" + question10 + "','" + question11 + "','" + 
    	 			question12 + "','" + question13 + "','" + question14 + "','" + question15 + "','" + question16 + "','" + 
    	 			question17 + "','" + question18 + "','" + question19 + "','" + question20 + "','" + question21 + "','" +
    	 			question22 + "','" + score + "','" + condition + "','" + suggest + "')";  
   
    	 	try {  
    	 		row = db.executeInsert(sql);  
    	 		if(row == 1){
    	 			JOptionPane.showConfirmDialog(null, "提交成功！","提示",JOptionPane.DEFAULT_OPTION);
    	 			res.sendRedirect("teacher_class_research.jsp");
    	 		}		
    	 	} catch (Exception e) {  
    	 		System.out.print(e.toString());  
    	 	}  			 
  
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  		
		doPost(req, res);  
    }  
}       

