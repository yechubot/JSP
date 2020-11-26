package ch12;

import java.sql.*;

public class RegisterMgr{
	
	private DBConnectionMgr pool;

	public RegisterMgr(){
		try{
			pool = DBConnectionMgr.getInstance();
		}catch(Exception e){
			System.out.println("Error : ");			
		}
	}

	public boolean loginRegister(String id, String pwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean loginCon = false;
        try {
            con = pool.getConnection();
			String query = "select count(*) from tblRegister where id = ? and pwd = ?";
			//뭐 들어올지 모를 때 ?로 대치 
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            rs = pstmt.executeQuery();
            if(rs.next()&&rs.getInt(1)>0) 
            	loginCon =true;
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }finally{
             pool.freeConnection(con,pstmt,rs);
        }
        return loginCon;
    }
}
