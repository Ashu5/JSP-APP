package MVC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Database {
public Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root" , "password");
	}
	catch(Exception e){
		e.printStackTrace();
	}
	return con;
}
public ArrayList<Model> getModel(Model model) throws SQLException
{
	Connection con=null;
	PreparedStatement pstmt= null;
	ResultSet rs=null;
	Model mod=null;
 ArrayList<Model> list= new ArrayList<>();
 try{
	 con=this.getConnection();
	 String query="Select id,name,salary from emp_demo where salary = ? ";
	 pstmt=con.prepareStatement(query);
	 pstmt.setString(1, model.getSalary());
	 rs=pstmt.executeQuery();
	 while(rs.next())
	 {
		  mod= new Model();
		 mod.setId(rs.getInt("id"));
		 mod.setName(rs.getString("name"));
		 mod.setSalary(rs.getString("salary"));
		 list.add(mod);
	 }
 }

		finally{
		if(rs!=null){
			rs.close();
		}
		if(pstmt!=null){
			pstmt.close();
		}
		if(con!=null){
			con.close();
		}
	}
return list;
} 
}
 
 




