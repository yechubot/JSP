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

	public String loginRegister(String id, String pwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String name = "";//select 결과 이름기억시킬 변수 선언 
     //   boolean loginCon = false;
        try {
            con = pool.getConnection();
			String query = "select count(*),name from tblRegister where id = ? and pwd = ?";
			//뭐 들어올지 모를 때 ?로 대치 
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            rs = pstmt.executeQuery();
            if(rs.next()&&rs.getInt(1)>0) //count 가 0보다 큼 (db 에 있는 거 썼다면)
            //	loginCon =true;
            	name = rs.getString(2); //resultset의 name 항목을 name 변수에 받음 
            
        }catch(Exception ex) {
            System.out.println("Exception" + ex);
        }finally{
             pool.freeConnection(con,pstmt,rs);
        }
        return name; //name을 보냄
    }
}
