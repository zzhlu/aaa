package bean;

import java.sql.*;

public class SqlBean {
	public Connection conn=null; //���ݿ�����
	public ResultSet rs=null; //��¼��
	
	//�������ݿ�����
	private String DatabaseDriver = "com.mysql.jdbc.Driver";
	//DataSource ����Դ���� DSN           
	private String DatabaseConnStr = "jdbc:mysql://localhost:3306/test?user=root&password=123456&useUnicode=true&characterEncoding=utf-8";

	/*setXxx ������������ֵ;getXxx ���ڵõ�����ֵ*/	
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
	
	public SqlBean(){ //���캯��
		try{
			Class.forName(DatabaseDriver).newInstance(); //ע�����ݿ���������
		}
		catch(Exception e){ //���������������
			System.err.println("�����������д���:"+e.getMessage( ));
			System.out.print("ִ�в����д���:"+e.getMessage());//������ͻ���
		}
	}
	
	 //ִ�в������ݿ���� 
	 public int executeInsert(String sql){
		 	int row = 0;
		 	try{
		 		//�������ݿ�����
		 		conn = DriverManager.getConnection(DatabaseConnStr);
		 		//���� JDBC ����
		 		Statement stmt=conn.createStatement( );
		 		//ִ��ָ��
		 		row=stmt.executeUpdate(sql);
		 	}
		 	catch(SQLException ex){
		 		System.err.println("ִ�в����д���:"+ex.getMessage() );
		 		System.out.print("ִ�в����д���:"+ex.getMessage());//������ͻ���
		 	}
		 	//�ر�����
		 	CloseDataBase();
		 	//���ؽ��
		 	return row;
	 }
	 
	 // ��ڲ���Ϊ sql ��䣬���� ResultSet ����
	 public ResultSet executeQuery(String sql){
		 rs=null;
		 try{
			 //�������ݿ�����
			 conn = DriverManager.getConnection(DatabaseConnStr);
			 //���� JDBC ����
			 Statement stmt=conn.createStatement( );
			 //ִ�в�ѯ����
			 rs=stmt.executeQuery(sql);
		 }
		 catch(SQLException ex){
			 System.err.println("ִ�в�ѯ�д���:"+ex.getMessage() );
			 System.out.print("ִ�в�ѯ�д���:"+ex.getMessage()); //������ͻ���
		 }
		 //��ò�ѯ���
		 return rs;
	}
	 
	 //�����ӣ�ɾ�����ݼ�¼�Ĳ���
	 public int executeDelete(String sql){
		 int row=0;
		 try{
			 //�������ݿ�����
			 	conn = DriverManager.getConnection(DatabaseConnStr);
			 	//����һ�� JDBC ����
			 	Statement stmt=conn.createStatement( );
			 	//ִ��ָ��
			 	row=stmt.executeUpdate(sql);
		 }
		 catch(SQLException ex){
			 System.err.println("ִ��ɾ���д���:"+ex.getMessage() );
			 System.out.print("ִ��ɾ���д���:"+ex.getMessage()); //������ͻ���
		 }
		 //�ر�����
		 CloseDataBase();
		 //���ؽ��
		 return row;
	 }
	 
	 //�ر����ݿ�����
	 public void CloseDataBase(){
		 try{
			 //�ر�����
			 conn.close();
		 }
		 catch(Exception end){
			 System.err.println("ִ�йر� Connection �����д���"+end.getMessage( ) );
			 System.out.print("ִ��ִ�йر� Connection �����д����д���:"+end.getMessage()); //������ͻ���
		 }
	 }
}
