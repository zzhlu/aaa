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
		
		JFreeChart pie_chart = ChartFactory.createPieChart("��������ԭ��γ�\nѧ������Ȥ���",pieDataset,true,true,false); 

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
			   String sql="select '����Ȥ' as intrest,count(*) as usercount from student_research where question6='yes' and courseName='��������ԭ��'" +
					   "union select '�Ƚ�����Ȥ' as intrest,count(*) as usercount from student_research where question6='basic' and courseName='��������ԭ��' " +
					   "union select 'û����Ȥ' as intrest,count(*) as usercount from student_research where question6='no' and courseName='��������ԭ��' ";			   
			 
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
