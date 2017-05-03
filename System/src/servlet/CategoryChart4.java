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

public class CategoryChart4 extends HttpServlet {
	
	private DefaultCategoryDataset categoryDataset = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  	
		getDataSet();		
		JFreeChart category_chart = ChartFactory.createBarChart3D("�����ϵͳ�ṹ�γ�\nָ����ʦ����ܷ����","����","����",categoryDataset,PlotOrientation.VERTICAL,false,false,false);  
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
            request.getRequestDispatcher("/teacher_practice_result.jsp");  
        } finally {  
            try {   
            } catch(Exception e) {}  
        }  		
	}  
	
	public void getDataSet() { 	
		   categoryDataset = new DefaultCategoryDataset();  
		   SqlBean db = new SqlBean(); 
		   
		   try {		   
			   String sql="select '60������' as score,count(*) as usercount from teacher_practice_research where guideScore<60 and courseName='�����ϵͳ�ṹ' " +
					   "union select '60~70��' as score,count(*) as usercount from teacher_practice_research where guideScore>=60 and guideScore<70 and courseName='�����ϵͳ�ṹ' " +
					   "union select '70~80��' as score,count(*) as usercount from teacher_practice_research where guideScore>=70 and guideScore<80 and courseName='�����ϵͳ�ṹ' " +
					   "union select '80~90��' as score,count(*) as usercount from teacher_practice_research where guideScore>=80 and guideScore<90 and courseName='�����ϵͳ�ṹ' " +
					   "union select '90~100��' as score,count(*) as usercount from teacher_practice_research where guideScore>=90 and guideScore<=100 and courseName='�����ϵͳ�ṹ'";			   
			 
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
