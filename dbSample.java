/*******************************************
 프로그램명 : dbSample.java
 * 작성자 : 황근민, 임경수
 * 작성일 : 2020-12-01
 * 프로그램 설명 :MS Access 와 Spring을 연결하는 클래스
 ***************************************/
package co.df.ds;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class dbSample {
	
	// 드라이버 변수로 선언
	private static final String DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
	// 파일 경로를 변수로 선언
	// 파일 경로 개발자마다 다름, jdbc:ucanaccess: 부분은 동일
	private static final String dbURL = "jdbc:ucanaccess://C://Users//hgma1//eclipse-workspace//GYE//dataset.accdb";
	
	
	/*******************************************
	 * 작성자 : 황근민
	 * 작성일 : 2020-11-15
	 * 프로그램 설명 : accdb 파일과 연결해서 connection 객체를 생성하는 함수
	 ***************************************/
	public void testConnetion() throws Exception {
		// 드라이버 로드
		Class.forName(DRIVER);
		
		// db 연결, 확인은 콘솔창으로
		try(Connection conn = DriverManager.getConnection(dbURL)){
			System.out.println("연결 성공");
		
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/*******************************************
	 * 작성자 : 임경수
	 * 작성일 : 2020-11-30
	 * 프로그램 설명 :영화 세부정보 리뷰를 db에 넣는 함수
	 ***************************************/
	public void InsertSpeMovieReview(String movieCode, String Name, String password, String contents) throws Exception
	{
		Class.forName(DRIVER);
				
		
		try(Connection conn = DriverManager.getConnection(dbURL)){
			System.out.println("연결 성공");
			
			
				PreparedStatement ps = conn.prepareStatement(
						"insert into spe_movie_review(movie_code, writer_name, password, contents) "
						+ "values (?, ?, ?, ?)");
				
				ps.setString(1, movieCode);
				ps.setString(2, Name);
				ps.setNString(3, password);
				ps.setString(4, contents);
				
				ps.executeUpdate();
				
				System.out.println("review for specific movie ("+movieCode+") is completed");
			
				
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/*******************************************
	 * 작성자 : 임경수
	 * 작성일 : 2020-11-30
	 * 프로그램 설명 :특정 영화의 리뷰 작성자명, 리뷰, 작성시간, 비밀번호 순으로 불러온다
	 ***************************************/
	public ArrayList GetSpecifiedReviews(String movieCode) throws Exception
	{
		Class.forName(DRIVER);
		ArrayList reviews = new ArrayList();
		
		try(Connection conn = DriverManager.getConnection(dbURL))
		{
			System.out.println("연결 성공");
			
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * from spe_movie_review");
			
			while(rs.next())
			{
				if(rs.getString("movie_code").equals(movieCode))
				{
					reviews.add(rs.getString("writer_name"));
					reviews.add(rs.getString("contents"));
					reviews.add(rs.getString("write_time").substring(0,19));
					reviews.add(rs.getString("password"));
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return reviews;
	}
	
	/*******************************************
	 * 작성자 : 임경수
	 * 작성일 : 2020-11-30
	 * 프로그램 설명 :이름과 비밀번호가 같은 리뷰를 삭제한다
	 ***************************************/
	public void Delete_specific_review(String username, String password) throws Exception
	{
		Class.forName(DRIVER);
		ArrayList reviews = new ArrayList();
		
		try(Connection conn = DriverManager.getConnection(dbURL))
		{
			
			PreparedStatement ps = conn.prepareStatement(
					"delete * from spe_movie_review where writer_name = ? and password = ?");
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			ps.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/*******************************************
	 * 작성자 : 임경수
	 * 작성일 : 2020-11-15
	 * 프로그램 설명 : 회원가입 정보를 db에 넣은 함수
	 ***************************************/
	//<!--황근민 수정-->
	// 수정: 황근민
	// 수정 내역: 회원가입할 때 입력 받을 정보(사용자 정의 질문과 답변) 추가
	public void InsertInfo(String ID, String PW, String UserName, int age, String Question, String Answer) throws Exception
	{
		
		Class.forName(DRIVER);
				
		
		try(Connection conn = DriverManager.getConnection(dbURL)){
			System.out.println("연결 성공");
			
			
				PreparedStatement ps = conn.prepareStatement(
						"insert into userinfo(id, username, password, age, question, answer)"
						+ "values (?, ?, ?, ?, ?, ?)");
				
				ps.setString(1, ID);
				ps.setString(2, UserName);
				ps.setString(3, PW);
				ps.setInt(4, age);
				ps.setString(5, Question);
				ps.setString(6, Answer);
				
				ps.executeUpdate();
				
				System.out.println("dataExecuted");
			
				
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	//<!--황근민 수정-->
	
	/*******************************************
	 * 작성자 : 임경수
	 * 작성일 : 2020-11-15
	 * 프로그램 설명 :중복되는 로그인 정보를 받아오는 함수(미완성)
	 ***************************************/
	public String GetSpeID(String ID) throws Exception
	{
		Class.forName(DRIVER);
		
		// db 연결, 확인은 콘솔창으로
		try(Connection conn = DriverManager.getConnection(dbURL)){
			System.out.println("연결 성공");
			
			String SQL = "select id from userinfo where id = " + ID;
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(SQL);
			
			return rs.getString(1);
			
			
		} catch(Exception e) {
			return " ";
		}
	}
	
	// 황근민
	// 아이디 중복 체크 함수
		public boolean checkID(String id) throws Exception
		{
			Class.forName(DRIVER);
			
			try(Connection conn = DriverManager.getConnection(dbURL))
			{
				System.out.println("연결 성공");
				
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("SELECT ID from userinfo");
				
				while(rs.next())
				{
					if(rs.getString("ID").equals(id))
						return false; 
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
				return true;
			
		}
		
		// 작성자 황근민
		// 사용자가 입력한 id와 password를 db와 비교하여 로그인을 실행하는 함수
		public boolean Login(String id, String pw) throws Exception
		{
			Class.forName(DRIVER);
					 
			try(Connection conn = DriverManager.getConnection(dbURL))
			{
				System.out.println("연결 성공");
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("SELECT * from userinfo");
						
				while(rs.next())
				{
					if(rs.getString("ID").equals(id))
						if(rs.getString("password").equals(pw))
							return true;
				}						
			}catch(Exception e) {	e.printStackTrace();	}						
			return false;
		}
		
		//<!--황근민 수정-->
		// 작성자 황근민
		// 비밀번호 찾기 함수
		// 아이디, 사용자 이름, 사용자 정의 질문, 답변을 입력받고 모두가 일치하면 비밀번호를 반환하고 하나라도 틀리면 반환하지 않는다.
		public String Find_password(String id, String UserName, String Question, String Answer) throws Exception
		{
			Class.forName(DRIVER);				 
			try(Connection conn = DriverManager.getConnection(dbURL))
			{
				System.out.println("연결 성공");
				String SQL = "SELECT * from userinfo where id = " + id;
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(SQL);
						
				while(rs.next())
				{
					if(rs.getString("username").equals(UserName))
					{
						if(rs.getString("question").equals(Question))
						{
							if(rs.getString("answer").equals(Answer))
								return rs.getString("password");
							
							else
								return Answer;
						}
						else
							return Question;
					}
					else
						return UserName;
					
				}						
				}catch(Exception e) {	e.printStackTrace();	}						
				return "";
		}
		
		// 작성자 : 황근민
		// 사용자가 커뮤니티 게시판에 글을 작성하면 글 정보를 DB에 저장하는 함수
		public void InsertCommunity(String Writer, String Title, String Contents, String Spoiler) throws Exception
		{
			Class.forName(DRIVER);
					
			
			try(Connection conn = DriverManager.getConnection(dbURL)){
				System.out.println("연결 성공");
				
				
					PreparedStatement ps = conn.prepareStatement(
							"insert into reviews(writer, title, contents, spoiler) "
							+ "values (?, ?, ?, ?)");
					
					ps.setString(1, Writer);
					ps.setString(2, Title);
					ps.setNString(3, Contents);
					ps.setString(4, Spoiler);
					
					ps.executeUpdate();
					
					System.out.println("success");
				
					
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		// 작성자: 황근민
		// DB에서 커뮤니티 관련 정보를 테이블로 만들어서 반환한다.
		public ArrayList<String> GetCommunity() throws Exception
		{
			Class.forName(DRIVER);
			ArrayList<String> Community = new ArrayList<String>();
			
			try(Connection conn = DriverManager.getConnection(dbURL))
			{
				System.out.println("연결 성공");
				
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery("SELECT * from reviews");
				
				while(rs.next())
				{
					Community.add(rs.getString("writer"));
					Community.add(rs.getString("title"));
					Community.add(rs.getString("contents"));
					Community.add(rs.getString("like"));
					Community.add(rs.getString("dislike"));
					Community.add(rs.getString("write_time").substring(0,19));
					Community.add(rs.getString("Spoiler"));
					Community.add(rs.getString("ID"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return Community;
		}
		//<!--황근민 수정-->
}
