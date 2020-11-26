package ch11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;



public class ScoreMgr {
	
	private final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
 	private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
 	private final String USER = "root";
 	private final String PASS = "1234";
 	
 	public ScoreMgr() {
 		try {
 			Class.forName(JDBC_DRIVER);
 		}catch(Exception e) {
 			System.out.println("error");
 		}
 	}
 	
 	public Vector<ScoreBean> getScoreBeans(){
 		Connection conn = null;
 		Statement smt = null;
 		ResultSet rs = null;
 		Vector<ScoreBean> slit = new Vector<ScoreBean>();
 		try {
 			conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
 			String query = "select * from scores";
 			smt = conn.createStatement();
 			rs = smt.executeQuery(query);
 			while(rs.next()) {
 				ScoreBean bean = new ScoreBean();
 				bean.setIdno(rs.getString("idno"));
 				bean.setJava(rs.getInt("java"));
 				bean.setMs(rs.getInt("ms"));
 				bean.setName(rs.getString("name"));
 				bean.setPub(rs.getInt("pub"));
 				slit.addElement(bean);
 			}
 				
 			}catch (Exception ex) {
 		          System.out.println("Exception" + ex);
 	       } finally {
 	          if(rs!=null)   try{rs.close();}  catch(SQLException e){}
 			  if(smt!=null) try{smt.close();}catch(SQLException e){}
 		      if(conn!=null) try{conn.close();}catch(SQLException e){}
 	       }
 		return slit;
 	}
}
