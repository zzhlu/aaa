package servlet;

import java.io.IOException;   
import java.sql.ResultSet;  
import java.sql.SQLException;  

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

import org.jfree.chart.ChartFactory;  
import org.jfree.chart.ChartUtilities;  
import org.jfree.chart.JFreeChart;   
import org.jfree.data.general.DefaultPieDataset;

import bean.SqlBean;

public class PieChart7 extends HttpServlet {
	
	private DefaultPieDataset pieDataset = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();		  
		JFreeChart pie_chart = ChartFactory.createPieChart("高数课程学生到课情况",pieDataset,true,true,false); 
		
		try {         
            ChartUtilities.writeChartAsJPEG(response.getOutputStream(),1.0f,pie_chart,400,300,null);
            request.getRequestDispatcher("/teacher_student_result.jsp");  
        } finally {  
            try {   
            } catch(Exception e) {}  
        }  		
	}  
	
	public void getDataSet() { 	
		   pieDataset = new DefaultPieDataset();  
		   SqlBean db = new SqlBean(); 
		   
		   try {		   
			   String sql="select '优秀' as score,count(*) as usercount from teacher_student_research where question2='excellence' and courseName='高数' " +
					   "union select '良好' as score,count(*) as usercount from teacher_student_research where question2='well' and courseName='高数' " +
					   "union select '合格' as score,count(*) as usercount from teacher_student_research where question2='qualified' and courseName='高数' " +
					   "union select '较差' as score,count(*) as usercount from teacher_student_research where question2='badder' and courseName='高数'";			   
			 
			   ResultSet rs = db.executeQuery(sql);				      
	           while(rs.next()) {  
	        	   pieDataset.setValue(rs.getString(1),rs.getInt(2));   
	           }           
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        } 
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		 doGet(request, response);  
    }
}
