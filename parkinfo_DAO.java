package parkInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class parkinfo_DAO {
	 //<데이터베이스 접근을 위한 변수 선언 및 초기화>
    //jdbc를 이용한 데이터 처리
    //0. 필요한 데이터 초기화
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
       
    //<데이터베이스 연결하는 메소드>   (커넥션 풀)
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
          if(con != null)      con.close();   //if문 꼭 써야 함
          if(pstmt != null)   pstmt.close();
          if(rs != null)      rs.close();
       } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
    }
       
    public ArrayList<parkinfo_DO> getAllInfo(){
       ArrayList<parkinfo_DO> pList = new ArrayList<>();
          
       connect_CP();
          
       try {
          //3. sql문 생성
          String sql = "select * from parkInfo";
          pstmt = con.prepareStatement(sql);
          //4. sql문 실행 및 결과처리
          //여러개의 데이터 값을 ResetSet 객체를 이용하여 처리
          rs = pstmt.executeQuery();
          while(rs.next()){
             //빈즈클래스 생성
             parkinfo_DO pdo = new parkinfo_DO();
             
             pdo.setNum(rs.getInt("num"));
             pdo.setTitle(rs.getString("title"));
             pdo.setLoc(rs.getString("loc"));
             pdo.setDays(rs.getString("days"));
             pdo.setSat(rs.getString("sat"));
             pdo.setHoliday(rs.getString("holiday"));
             pdo.setMoney(rs.getString("money"));
             pdo.setMinmoney(rs.getString("minmoney"));
             pdo.setAddmoney(rs.getString("addmoney"));

             pList.add(pdo);
          }
       } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
          
       System.out.println("getAllInfo(): 오라클 데이터베이스 처리 완료");
          
       disconnect();
          
       return pList;
    }

}
