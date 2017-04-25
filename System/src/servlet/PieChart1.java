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

public class PieChart1 extends HttpServlet {
	
	private DefaultPieDataset pieDataset = null; 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();
		
		JFreeChart pie_chart = ChartFactory.createPieChart("平均每周在物联网导论课程花费的时间",pieDataset,true,true,false); 

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
			   String sql="select '0-4h' as usertime,count(*) as usercount from student_research where question2 between 0 and 4 " +
					   "union select '4-8h' as usertime,count(*) as usercount from student_research where question2 between 4 and 8 " +
					   "union select '8-12h' as usertime,count(*) as usercount from student_research where question2 between 8 and 12 " +
					   "union select '12h以上' as usertime,count(*) as usercount from student_research where question2>12";			   
			 
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
