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

public class PieChart14 extends HttpServlet {
	
	private DefaultPieDataset pieDataset = null; 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();		
		JFreeChart pie_chart = ChartFactory.createPieChart("嵌入式原理与应用课程\n学生前排率情况",pieDataset,true,true,false); 
		
		try {         
            ChartUtilities.writeChartAsJPEG(response.getOutputStream(),1.0f,pie_chart,400,300,null);
            request.getRequestDispatcher("/teacher_class_result.jsp");  
        } finally {  
            try {   
            } catch(Exception e) {}  
        }  		
	}  
	
	public void getDataSet() { 	
		   pieDataset = new DefaultPieDataset();
		   SqlBean db = new SqlBean(); 
		   
		   try {		   
			   String sql="select '很好' as score,count(*) as usercount from teacher_class_research where question20='best' and courseName='嵌入式原理与应用' " +
					   "union select '较好' as score,count(*) as usercount from teacher_class_research where question20='better' and courseName='嵌入式原理与应用' " +
					   "union select '一般' as score,count(*) as usercount from teacher_class_research where question20='general' and courseName='嵌入式原理与应用' " +
					   "union select '较差' as score,count(*) as usercount from teacher_class_research where question20='badder' and courseName='嵌入式原理与应用'";			   
			 
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
