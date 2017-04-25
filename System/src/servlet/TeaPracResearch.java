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

public class TeaPracResearch extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  

		  res.setContentType("text/html");  
		  req.setCharacterEncoding("UTF-8");  
		  res.setCharacterEncoding("UTF-8");
		  
			//获得从页面中提交的信息  
            String courseName = req.getParameter("courseName");
            String className = req.getParameter("className");   
            String guideTeacher = req.getParameter("guideTeacher");
            String guideTeacherDuty = req.getParameter("guideTeacherDuty"); 
            String guideTeacherInstitute = req.getParameter("guideTeacherInstitute");
            String labTeacher = req.getParameter("labTeacher");
            String labTeacherDuty = req.getParameter("labTeacherDuty");
            String labTeacherInstitute = req.getParameter("labTeacherInstitute");
            String practiceType = req.getParameter("practiceType");
            String suggest = req.getParameter("suggest");
            
            int total;
            int actual;
            int late;
            Double score1;
            Double score2;
            Double score3;
            Double score4;
            Double score5;
            Double score6;
            Double score7;
            Double score8;
            
            try{
            	total = Integer.parseInt(req.getParameter("total"));
            	actual = Integer.parseInt(req.getParameter("actual"));
            	late = Integer.parseInt(req.getParameter("late"));
                score1 =  Double.parseDouble(req.getParameter("score1"));
                score2 =  Double.parseDouble(req.getParameter("score2"));
                score3 =  Double.parseDouble(req.getParameter("score3"));   
                score4 =  Double.parseDouble(req.getParameter("score4"));
                score5 =  Double.parseDouble(req.getParameter("score5"));
                score6 =  Double.parseDouble(req.getParameter("score6")); 
                score7 =  Double.parseDouble(req.getParameter("score7"));
                score8 =  Double.parseDouble(req.getParameter("score8"));
            }catch(Exception e){
                total = 0;
                actual = 0;
                late = 0;
                score1 = 0.0;
                score2 = 0.0;
                score3 = 0.0;
                score4 = 0.0;
                score5 = 0.0;
                score6 = 0.0;
                score7 = 0.0;
                score8 = 0.0;
            }
      
            Double guideScore = score1 + score4 + score7;
            Double studentScore = score2 + score5 + score8;
            Double labScore = score3 + score6;       
            
            Date dNow = new Date();                    
            SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd HH:mm:ss");
            String date = ft.format(dNow).toString();
            
            SqlBean db = new SqlBean(); 
            int row=0;

    	 	String sql = "insert into teacher_practice_research values('" + courseName + "','" + className + "','" + 
    	 			guideTeacher + "','" + guideTeacherDuty + "','" + guideTeacherInstitute + "','" + labTeacher + "','" + 
    	 			labTeacherDuty + "','" + labTeacherInstitute + "','" + practiceType + "','" + total + "','" + 
    	 			actual + "','" + late + "','" + date + "','" + score1 + "','" + score2 + "','" + score3 + "','" +
    	 			score4 + "','" + score5 + "','" + score6 + "','" + score7 + "','" + score8 + "','" + 
    	 			guideScore + "','" + studentScore + "','" + labScore + "','" + suggest + "')";  
   
    	 	try {  
    	 		row = db.executeInsert(sql);  
    	 		if(row == 1){
    	 			JOptionPane.showConfirmDialog(null, "提交成功！","提示",JOptionPane.DEFAULT_OPTION);
    	 			res.sendRedirect("teacher_practice_research.jsp");
    	 		}		
    	 	} catch (Exception e) {  
    	 		System.out.print(e.toString());  
    	 	}  			 
  
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {  		
		doPost(req, res);  
    }  
}       

