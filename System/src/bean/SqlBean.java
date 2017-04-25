package bean;

import java.sql.*;

public class SqlBean {
	public Connection conn=null; //数据库连接
	public ResultSet rs=null; //记录集
	
	//重载数据库驱动
	private String DatabaseDriver = "com.mysql.jdbc.Driver";
	//DataSource 数据源名称 DSN           
	private String DatabaseConnStr = "jdbc:mysql://localhost:3306/test?user=root&password=123456&useUnicode=true&characterEncoding=utf-8";

	/*setXxx 用于设置属性值;getXxx 用于得到属性值*/	
	public void setDatabaseDriver(String Driver){
		this.DatabaseDriver=Driver;
	}
	
	public String getDatabaseDriver(){
		return (this.DatabaseDriver);
	}
	
	public void setDatabaseConnStr(String ConnStr){
		this.DatabaseConnStr=ConnStr;
	}
	
	public String getDatabaseConnStr(){
		return (this.DatabaseConnStr);
	}
	
	public SqlBean(){ //构造函数
		try{
			Class.forName(DatabaseDriver).newInstance(); //注册数据库驱动程序
		}
		catch(Exception e){ //输出结果，方便调试
			System.err.println("加载驱动器有错误:"+e.getMessage( ));
			System.out.print("执行插入有错误:"+e.getMessage());//输出到客户端
		}
	}
	
	 //执行插入数据库操作 
	 public int executeInsert(String sql){
		 	int row = 0;
		 	try{
		 		//创建数据库连接
		 		conn = DriverManager.getConnection(DatabaseConnStr);
		 		//创建 JDBC 声明
		 		Statement stmt=conn.createStatement( );
		 		//执行指令
		 		row=stmt.executeUpdate(sql);
		 	}
		 	catch(SQLException ex){
		 		System.err.println("执行插入有错误:"+ex.getMessage() );
		 		System.out.print("执行插入有错误:"+ex.getMessage());//输出到客户端
		 	}
		 	//关闭连接
		 	CloseDataBase();
		 	//返回结果
		 	return row;
	 }
	 
	 // 入口参数为 sql 语句，返回 ResultSet 对象
	 public ResultSet executeQuery(String sql){
		 rs=null;
		 try{
			 //创建数据库连接
			 conn = DriverManager.getConnection(DatabaseConnStr);
			 //创建 JDBC 声明
			 Statement stmt=conn.createStatement( );
			 //执行查询命令
			 rs=stmt.executeQuery(sql);
		 }
		 catch(SQLException ex){
			 System.err.println("执行查询有错误:"+ex.getMessage() );
			 System.out.print("执行查询有错误:"+ex.getMessage()); //输出到客户端
		 }
		 //获得查询结果
		 return rs;
	}
	 
	 //用增加，删除数据记录的操作
	 public int executeDelete(String sql){
		 int row=0;
		 try{
			 //创建数据库连接
			 	conn = DriverManager.getConnection(DatabaseConnStr);
			 	//创建一个 JDBC 声明
			 	Statement stmt=conn.createStatement( );
			 	//执行指令
			 	row=stmt.executeUpdate(sql);
		 }
		 catch(SQLException ex){
			 System.err.println("执行删除有错误:"+ex.getMessage() );
			 System.out.print("执行删除有错误:"+ex.getMessage()); //输出到客户端
		 }
		 //关闭连接
		 CloseDataBase();
		 //返回结果
		 return row;
	 }
	 
	 //关闭数据库连接
	 public void CloseDataBase(){
		 try{
			 //关闭连接
			 conn.close();
		 }
		 catch(Exception end){
			 System.err.println("执行关闭 Connection 对象有错误："+end.getMessage( ) );
			 System.out.print("执行执行关闭 Connection 对象有错误：有错误:"+end.getMessage()); //输出到客户端
		 }
	 }
}
