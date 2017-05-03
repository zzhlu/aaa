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
		JFreeChart pie_chart = ChartFactory.createPieChart("Ƕ��ʽԭ����Ӧ�ÿγ�\nѧ��ǰ�������",pieDataset,true,true,false); 
		
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
			   String sql="select '�ܺ�' as score,count(*) as usercount from teacher_class_research where question20='best' and courseName='Ƕ��ʽԭ����Ӧ��' " +
					   "union select '�Ϻ�' as score,count(*) as usercount from teacher_class_research where question20='better' and courseName='Ƕ��ʽԭ����Ӧ��' " +
					   "union select 'һ��' as score,count(*) as usercount from teacher_class_research where question20='general' and courseName='Ƕ��ʽԭ����Ӧ��' " +
					   "union select '�ϲ�' as score,count(*) as usercount from teacher_class_research where question20='badder' and courseName='Ƕ��ʽԭ����Ӧ��'";			   
			 
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
