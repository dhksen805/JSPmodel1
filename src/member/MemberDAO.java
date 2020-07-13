package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MemberDAO {
	
	public void insertMember(MemberBean mb) {
		System.out.println("MemberDao insert()메서드에서 받아온 id : "+mb.getId());
		System.out.println("MemberDao insert()메서드에서 받아온 name : "+mb.getName());
		System.out.println("MemberDao insert()메서드에서 받아온 paa : "+mb.getPass());
		System.out.println("MemberDao insert()메서드에서 받아온 reg_date : "+mb.getReg_date());
		
		System.out.println("메서드 시작");
		int a=10;
		int b=0;
		//자바에서 제공하는 예외 자동 처리 구문
		try {
			// 예외가 발생할것 같은 구문
			System.out.println("나누기:"+a/b);
		} catch (Exception e) {
			// 예외가 발생하면 처리하는 구문
			System.out.println("0으로 나눔");
		}finally {
			// 예외상관없이 마무리작업 구문
			System.out.println("예외 상관없이 마무리작업 구문");
		}
		System.out.println("메서드 종료");
		
//		if(b!=0) {
//			System.out.println("나누기:"+a/b);
//		}else {								// 수동처리가 힘듬
//			System.out.println("0으로 나눔");
//		}
//		System.out.println("메서드 종료");
		
		
		try {
			// 1단계 드라이버로더
			 Class.forName("com.mysql.jdbc.Driver");
			 // 2단계 디비연결
			 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
			 String dbUser="jspid";
			 String dbPass="jsppass";
			 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
			 // 3단계 sql문 만들고 실행할 객체생성  insert
			 String sql="insert into member(id,pass,name,reg_date) values(?,?,?,?)";
			 PreparedStatement pstmt=con.prepareStatement(sql);
			 pstmt.setString(1, mb.getId());
			 pstmt.setString(2, mb.getPass());
			 pstmt.setString(3, mb.getName());
			 pstmt.setTimestamp(4, mb.getReg_date());
			 // 4단계 sql문 실행
			 pstmt.executeUpdate();
		} catch (Exception e) {
			// 예외가 발생하면 처리하는 구문
			e.printStackTrace();
		}finally {
			// 예외상관없이 마무리 작업 구문 => 기억장소 해제
			
		}
		
		 
	}// insertMember()
	
	
	public int userCheck(String id, String pass) {
		int check = -1;
		try {
			// 1단계 드라이버로더
			 Class.forName("com.mysql.jdbc.Driver");
			 // 2단계 디비연결
			 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
			 String dbUser="jspid";
			 String dbPass="jsppass";
			 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
			 // 3단계 sql문 만들고 실행할 객체생성  insert
			 String sql= "select * from member where id = ?";
			 PreparedStatement pstmt=con.prepareStatement(sql);
			 pstmt.setString(1, id);
			 ResultSet rs=pstmt.executeQuery();
			 if(rs.next()){
				 	//아이디 일치
				 	if(pass.equals(rs.getString("pass"))){
				 		check=1;
				 		// 비밀번호 일치
				 	}else{
				 		check=0;
				 		System.out.println("비밀번호 틀림");//비밀번호 틀림 뒤로이동
				 	}
			 }
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			// 예외상관없이 마무리 작업 구문 => 기억장소 해제
			
		}
		return check;
	}
		public MemberBean getMember(String id) {
			MemberBean mb = new MemberBean();
			try {
				 // 1단계 드라이버로더
				 Class.forName("com.mysql.jdbc.Driver");
				 // 2단계 디비연결
				 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
				 String dbUser="root";
				 String dbPass="1234";
				 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
				 // 3단계 sql 만들고 실행할수 있는 객체 만들기 select
				 String sql="select * from member where id=?";
				 PreparedStatement pstmt=con.prepareStatement(sql);
				 pstmt.setString(1, id);
				 // 4단계 결과<=실행 결과 저장
				 ResultSet rs=pstmt.executeQuery();
				 if(rs.next()){
					
					 mb.setId(rs.getString("id"));
					 mb.setPass(rs.getString("pass"));
					 mb.setName(rs.getString("name"));
					 mb.setReg_date(rs.getTimestamp("reg_date"));
					 
					 
					
				 }
				
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				
			}
			return mb;
		}
	
		// updateMember(mb);
		public void updateMember(MemberBean mb) {
			try {
				// 1단계 드라이버로더
				 Class.forName("com.mysql.jdbc.Driver");
				 // 2단계 디비연결
				 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
				 String dbUser="root";
				 String dbPass="1234";
				 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//				 3단계 수정
		 		String sql="update member set name=? where id=?";
		 		PreparedStatement pstmt=con.prepareStatement(sql);
		 		pstmt.setString(1, mb.getName());
		 		pstmt.setString(2, mb.getId());
		 		// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
		 		pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				
			}
		}
	
	
		public void deleteMember(MemberBean mb) {
			try {
				// 1단계 드라이버로더
				 Class.forName("com.mysql.jdbc.Driver");
				 // 2단계 디비연결
				 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
				 String dbUser="root";
				 String dbPass="1234";
				 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//				 3단계 수정
		 		String sql="delete from member  where id=?";
		 		PreparedStatement pstmt=con.prepareStatement(sql);
		 		pstmt.setString(1, mb.getId());
		 		// 4단계  객체 실행 (sql구문이 실행) - insert, update, delete
		 		pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				
			}
		}
		
		public List getMemberList() {
			// 여러명의 데이터를 저장하는 기억장소, 배열API
			List memberList=new ArrayList();
			try {
				// 1단계 드라이버로더
				 Class.forName("com.mysql.jdbc.Driver");
				 // 2단계 디비연결
				 String dbUrl="jdbc:mysql://localhost:3306/jspdb1";
				 String dbUser="root";
				 String dbPass="1234";
				 Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);
//				 3단계 수정
		 		String sql="select * from member";
		 		PreparedStatement pstmt=con.prepareStatement(sql);
		 		// 4단계 rs <= 실행 결과 저장
		 		ResultSet rs=pstmt.executeQuery();
		 		// 5단계 while 첫행으로 이동 데이터 있으면
//				한사람의 데이터 저장 MemberBean mb 객체생성
		 		//							   mb 멤버변수 <= rs에 저장된 열내용
		 		
		 		while(rs.next()){
		 			MemberBean mb=new MemberBean();
		 			mb.setId(rs.getString("id"));
		 			mb.setPass(rs.getString("pass"));
		 			mb.setName(rs.getString("name"));
		 			mb.setReg_date(rs.getTimestamp("reg_date"));
//					배열 한칸에 한사람의 데이터 주소저장 memberList.add(mb);
		 			memberList.add(mb);
		 		}
		 		
		 		
		 		pstmt.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				
			}
			return memberList;
		}
		
	}

//클래스
