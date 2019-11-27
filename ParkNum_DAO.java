package ParkNum;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ParkNum_DAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void connect_CP(){
		try {
			Context initctx = new InitialContext();
			DataSource ds = (DataSource) initctx.lookup("java:/comp/env/jdbc/pool");
			con = ds.getConnection();
					
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void disconnect(){
		try {
			if(con != null)		con.close();	
			if(pstmt != null)	pstmt.close();
			if(rs != null)		rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void insertParkNum(ParkNum_DO pdo){	//addrBean.java
		connect_CP();
		
		try {
			String sql = "insert into parknum values (pninfo_seq.nextval,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pdo.getCarnumber());
			
			pstmt.executeUpdate();
			System.out.println("insertEvent(): 오라클 데이터베이스 처리 완료");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		disconnect();
	}
	
	public ArrayList<ParkNum_DO> getAllParkNum(){
		ArrayList<ParkNum_DO> pList = new ArrayList<>();
		
		connect_CP();
		try {
			String sql = "select * from parknum";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();
			while(rs.next()){
				ParkNum_DO pdo = new ParkNum_DO();
				
				pdo.setNum(rs.getInt("num"));
				pdo.setCarnumber(rs.getString("carnumber"));

				pList.add(pdo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("getAllCardInfo(): 오라클 데이터베이스 처리 완료");
		disconnect();
		return pList;
	}
}
