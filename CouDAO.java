package Cou;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.servlet.http.HttpSession;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class CouDAO {
	//<데이터베이스 접근을 위한 변수 선언 및 초기화>
			//jdbc를 이용한 데이터 처리
			//0. 필요한 데이터 초기화
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String dbid = "system";
			String dbpassward = "111111";
			String dburl = "jdbc:oracle:thin:@localhost:1521:xe";
			
			//<데이터베이스 연결하는 메소드>
			public void connect(){
				//1. jdbc 오라클 드라이버 로딩
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//2. 데이터베이스 연결
				try {
					con = DriverManager.getConnection(dburl,dbid,dbpassward);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			//<데이터베이스 연결 및 자원 해제 메소드>
			public void disconnect(){
				//5. 자원해제
					try {
						if(con != null)		con.close();
						if(pstmt != null)	pstmt.close();
						if(rs != null)		rs.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			
			public int couponCheck(String cnum){
				//1. 데이터베이스 연결
				connect();
				
		        int x=0;
		        try {
		        	String sql = null;
		            sql="select couponnum from cnumber where couponnum=?";
		            pstmt = con.prepareStatement(sql);
		            pstmt.setString(1, cnum);
		            rs = pstmt.executeQuery();
		            if(rs.next()){ //해당하는 레코드가 있는 경우
		            	x = 1;
		            }else{
		            	x = 2;
		            }
		        } catch (SQLException e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
				disconnect();
				System.out.println("couponCheck(): 완료");
				return x;
			}
			
			public void couponDelete(String cnum){
				//1. 데이터베이스 연결
				connect();
				
				System.out.println("couponDelete() 접근 완료");
				
				try {
					String sql = "delete from cnumber where couponnum=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, cnum);
					pstmt.executeUpdate();
					System.out.println("couponDelete(): 오라클 데이터베이스 처리 완료");
		        } catch (SQLException e) {
		            // TODO Auto-generated catch block
		            e.printStackTrace();
		        }
				disconnect();
			}

}
