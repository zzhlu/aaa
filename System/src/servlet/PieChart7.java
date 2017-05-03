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
		JFreeChart pie_chart = ChartFactory.createPieChart("�����γ�ѧ���������",pieDataset,true,true,false); 
		
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
			   String sql="select '����' as score,count(*) as usercount from teacher_student_research where question2='excellence' and courseName='����' " +
					   "union select '����' as score,count(*) as usercount from teacher_student_research where question2='well' and courseName='����' " +
					   "union select '�ϸ�' as score,count(*) as usercount from teacher_student_research where question2='qualified' and courseName='����' " +
					   "union select '�ϲ�' as score,count(*) as usercount from teacher_student_research where question2='badder' and courseName='����'";			   
			 
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
