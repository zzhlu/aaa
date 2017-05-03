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
import org.jfree.chart.axis.NumberAxis3D;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset; 

import bean.SqlBean;

public class CategoryChart1 extends HttpServlet {
	
	private DefaultCategoryDataset categoryDataset = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();		
		JFreeChart category_chart = ChartFactory.createBarChart3D("�����γ̸���ѧ��������������","����","����",categoryDataset,PlotOrientation.VERTICAL,false,false,false);  
		//��ȡͼ���������  
        CategoryPlot categoryPlot = (CategoryPlot)category_chart.getPlot();
		//��ȡY��Ķ���  
        NumberAxis3D numberAxis3D = (NumberAxis3D)categoryPlot.getRangeAxis();   
		//����Y������ʾ�Ŀ̶ȣ���1��Ϊ1��  
        numberAxis3D.setAutoTickUnitSelection(false);  
        NumberTickUnit unit = new NumberTickUnit(1);  
        numberAxis3D.setTickUnit(unit); 
		
		try {         
            ChartUtilities.writeChartAsJPEG(response.getOutputStream(),1.0f,category_chart,400,300,null);
            request.getRequestDispatcher("/teacher_student_result.jsp");  
        } finally {  
            try {   
            } catch(Exception e) {}  
        }  		
	}  
	
	public void getDataSet() { 	
		   categoryDataset = new DefaultCategoryDataset();  
		   SqlBean db = new SqlBean(); 
		   
		   try {		   
			   String sql="select '60������' as score,count(*) as usercount from teacher_student_research where score<60 and courseName='����' " +
					   "union select '60~70��' as score,count(*) as usercount from teacher_student_research where score>=60 and score<70 and courseName='����' " +
					   "union select '70~80��' as score,count(*) as usercount from teacher_student_research where score>=70 and score<80 and courseName='����' " +
					   "union select '80~90��' as score,count(*) as usercount from teacher_student_research where score>=80 and score<90 and courseName='����' " +
					   "union select '90~100��' as score,count(*) as usercount from teacher_student_research where score>=90 and score<=100 and courseName='����'";			   
			 
			   ResultSet rs = db.executeQuery(sql);				      
	           while(rs.next()) {  
	        	   categoryDataset.addValue(rs.getInt(2), "", rs.getString(1));   
	           }           
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        } 
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		 doGet(request, response);  
    }
}
