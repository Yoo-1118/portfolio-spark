package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class member_DAO {
	//<데이터베이스 접근을 위한 변수 선언 및 초기화>
			//jdbc를 이용한 데이터 처리
			//0. 필요한 데이터 초기화
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			//<데이터베이스 연결하는 메소드>	(커넥션 풀)
			public void connect_CP(){
				try {
					//1. context.xml에 접근
					Context initctx = new InitialContext();
							
					//2. name = "jdbc/pool"인 커넥션 풀에 접근
					DataSource ds = (DataSource) initctx.lookup("java:/comp/env/jdbc/pool");
							
					//3. 커넥션 풀에서 하나의 커넥션을 할당받음
					con = ds.getConnection();
							
				} catch (NamingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			//<데이터베이스 연결 및 자원 해제 메소드>
			public void disconnect(){
				//5. 자원 해제
				try {
					if(con != null)		con.close();	//if문 꼭 써야 함
					if(pstmt != null)	pstmt.close();
					if(rs != null)		rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			public int loginCheck(String id, String pw){
				
				connect_CP();
				
		        String dbPW = null; // db에서 꺼낸 비밀번호를 담을 변수
		        int x=-1;
		 
		        try {
		            // 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
		            String sql = null;
		            sql="select password from member_info where id=?";
		            pstmt = con.prepareStatement(sql);
		            pstmt.setString(1, id);
		            rs = pstmt.executeQuery();
		 
		            if (rs.next()){ // 입려된 아이디에 해당하는 비번 있을경우
		            
		                dbPW = rs.getString("password"); // 비번을 변수에 넣는다.
		 
		                if (dbPW.equals(pw)) 
		                    x = 1; // 넘겨받은 비번과 꺼내온 배번 비교. 같으면 인증성공
		                else                  
		                    x = 0; // DB의 비밀번호와 입력받은 비밀번호 다름, 인증실패
		                
		            }
		        } catch (SQLException e) {
		        	e.printStackTrace();
		        }
		        disconnect();
		        return x;
		    } 
			
			public void insertInfo(member_DO mdo){	//addrBean.java
				//1. 데이터베이스 연결(커넥션 풀 )
				connect_CP();
				
				//2. SQL문 실행 및 결과 처리
				try {
					String sql = "insert into member_info values (membercode.nextval,?,?)";
					
					pstmt = con.prepareStatement(sql);
					//?? 채우기
					pstmt.setString(1, mdo.getId());
					pstmt.setString(2, mdo.getPassword());
					
					//4. sql문 실행 및 결과처리
					pstmt.executeUpdate();
					System.out.println("insertEvent(): 오라클 데이터베이스 처리 완료");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				//3. 데이터베이스 자원 해제
				disconnect();
			}
			
			public ArrayList<member_DO> getAllInfo(){
				ArrayList<member_DO> bList = new ArrayList<>();
				
				connect_CP();
				
				try {
					//3. sql문 생성
					String sql = "select * from addressDB_B";
					pstmt = con.prepareStatement(sql);
					//4. sql문 실행 및 결과처리
					//여러개의 데이터 값을 ResetSet 객체를 이용하여 처리
					rs = pstmt.executeQuery();
					while(rs.next()){
						//빈즈클래스 생성
						member_DO mdo = new member_DO();
						
						mdo.setMembercode(rs.getInt("membercode"));
						mdo.setId(rs.getString("id"));
						mdo.setPassword(rs.getString("password"));

						bList.add(mdo);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				System.out.println("getAllInfo(): 오라클 데이터베이스 처리 완료");
				
				disconnect();
				
				return bList;
			}
			
			public member_DO getOneInfo(int num){
				member_DO mdo = new member_DO();
				connect_CP();
				
				try {
					//3. sql문 생성
					String sql = "select * from member_info where membercode=?";
					pstmt = con.prepareStatement(sql);
					//3-1 ?설정
					pstmt.setInt(1, num);
					//4. sql문 실행 및 결과처리
					//여러개의 데이터 값을 ResetSet 객체를 이용하여 처리
					rs = pstmt.executeQuery();
					while(rs.next()){
						mdo.setMembercode(rs.getInt("membercode"));
						mdo.setId(rs.getString("id"));
						mdo.setPassword(rs.getString("password"));
					}
					System.out.println("getOneInfo(): 오라클 데이터베이스 처리 완료");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				disconnect();
				return mdo;
			}
			
			public void deleteMember(int membercode){
				//1. 데이터베이스 연결
				connect_CP();
				
				//2. SQL문 실행
				try {
					//sql문 생성
					String sql = "delete from member_info where membercode=?";
					pstmt = con.prepareStatement(sql);
					
					//3.1 ? 설정
					pstmt.setInt(1, membercode);
					//4. sql문 실행 및 결과 처리
					pstmt.executeUpdate();
					
					System.out.println("deleteMember(): 오라클 데이터베이스 처리 완료");
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				//5. 데이터베이스 연결 해제
				disconnect();
			}
}
