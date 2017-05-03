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
		JFreeChart category_chart = ChartFactory.createBarChart3D("高数课程根据学生表现所评分数","分数","人数",categoryDataset,PlotOrientation.VERTICAL,false,false,false);  
		//获取图表区域对象  
        CategoryPlot categoryPlot = (CategoryPlot)category_chart.getPlot();
		//获取Y轴的对象  
        NumberAxis3D numberAxis3D = (NumberAxis3D)categoryPlot.getRangeAxis();   
		//处理Y轴上显示的刻度，以1作为1格  
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
			   String sql="select '60分以下' as score,count(*) as usercount from teacher_student_research where score<60 and courseName='高数' " +
					   "union select '60~70分' as score,count(*) as usercount from teacher_student_research where score>=60 and score<70 and courseName='高数' " +
					   "union select '70~80分' as score,count(*) as usercount from teacher_student_research where score>=70 and score<80 and courseName='高数' " +
					   "union select '80~90分' as score,count(*) as usercount from teacher_student_research where score>=80 and score<90 and courseName='高数' " +
					   "union select '90~100分' as score,count(*) as usercount from teacher_student_research where score>=90 and score<=100 and courseName='高数'";			   
			 
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
