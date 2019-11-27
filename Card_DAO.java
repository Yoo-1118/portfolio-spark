package Card;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class Card_DAO {
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
		
		public void insertCardInfo(Card_DO cdo){	//addrBean.java
			connect_CP();
			try {
				String sql = "insert into cardinfo values (cardinfo_seq.nextval,?,?,?,?,?)";
				
				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, cdo.getBank());
				pstmt.setString(2, cdo.getCnumber());
				pstmt.setString(3, cdo.getExpiration());
				pstmt.setString(4, cdo.getName());
				pstmt.setString(5, cdo.getSecurity());
				
				pstmt.executeUpdate();
				System.out.println("insertEvent(): 오라클 데이터베이스 처리 완료");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			disconnect();
		}
		
		public ArrayList<Card_DO> getAllCardInfo(){
			ArrayList<Card_DO> cList = new ArrayList<>();
			
			connect_CP();
			
			try {
				String sql = "select * from cardinfo";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()){
					Card_DO cdo = new Card_DO();
					
					cdo.setNum(rs.getInt("num"));
					cdo.setBank(rs.getString("bank"));
					cdo.setCnumber(rs.getString("cnumber"));
					cdo.setExpiration(rs.getString("expiration"));
					cdo.setName(rs.getString("name"));
					cdo.setSecurity(rs.getString("security"));

					cList.add(cdo);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("getAllAddr(): 오라클 데이터베이스 처리 완료");
			disconnect();
			
			return cList;
		}
		
		public void deleteCard(int num){
			//1. 데이터베이스 연결
			connect_CP();
			
			//2. SQL문 실행
			try {
				//sql문 생성
				String sql = "delete from cardinfo where num=?";
				pstmt = con.prepareStatement(sql);
				
				//3.1 ? 설정
				pstmt.setInt(1, num);
				//4. sql문 실행 및 결과 처리
				pstmt.executeUpdate();
				
				System.out.println("deleteCard(): 오라클 데이터베이스 처리 완료");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//5. 데이터베이스 연결 해제
			disconnect();
		}
}

