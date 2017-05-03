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

public class PieChart4 extends HttpServlet {
	
	private DefaultPieDataset pieDataset = null; 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();
		
		JFreeChart pie_chart = ChartFactory.createPieChart("计算机组成原理课程\n学生的兴趣情况",pieDataset,true,true,false); 

		try {         
            ChartUtilities.writeChartAsJPEG(response.getOutputStream(),1.0f,pie_chart,400,300,null);
            request.getRequestDispatcher("/student_result.jsp");  
        } finally {  
            try {   
            } catch(Exception e) {}  
        }  		
	}  
	
	public void getDataSet() { 	
		   pieDataset = new DefaultPieDataset();
		   SqlBean db = new SqlBean(); 
		   
		   try {		   
			   String sql="select '有兴趣' as intrest,count(*) as usercount from student_research where question6='yes' and courseName='计算机组成原理'" +
					   "union select '比较有兴趣' as intrest,count(*) as usercount from student_research where question6='basic' and courseName='计算机组成原理' " +
					   "union select '没有兴趣' as intrest,count(*) as usercount from student_research where question6='no' and courseName='计算机组成原理' ";			   
			 
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
