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

public class PieChart2 extends HttpServlet {
	
	private DefaultPieDataset pieDataset = null; 

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();
		
		JFreeChart pie_chart = ChartFactory.createPieChart("��������ԭ��γ�\nƽ��ÿ�������ѵ�ʱ��",pieDataset,true,true,false); 

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
			   String sql="select '0-4h' as usertime,count(*) as usercount from student_research where question2>=0 and question2<=4 and courseName='��������ԭ��' " +
					   "union select '4-8h' as usertime,count(*) as usercount from student_research where question2>4 and question2<=8 and courseName='��������ԭ��' " +
					   "union select '8-12h' as usertime,count(*) as usercount from student_research where question2>8 and question2<=12 and courseName='��������ԭ��' " +
					   "union select '12h����' as usertime,count(*) as usercount from student_research where question2>12 and courseName='��������ԭ��'";			   
			 
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
