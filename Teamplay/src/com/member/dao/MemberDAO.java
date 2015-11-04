package com.member.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	private static SqlSessionFactory ssf;	
	static  // static 블록 사용.	 instance 변수면 생성자에서 코딩
	{
		try
		{
			// xml 읽어옴
			Reader reader = Resources.getResourceAsReader("Config.xml");	// 한글: reader(2byte)
			// 파싱	알아서 다해줌
			ssf = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	public static int memberIdCount(String id)
	{
		int count=0;
		SqlSession session = null;
		try
		{
			session=ssf.openSession();
			count = session.selectOne("memberIdCount",id);
		}
		catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return count;
		
	}
	/*
	 		class A
	 		{
	 			void selectList(){}
	 			void close(){}
	 			
	 		}
	 		new A().selectList()
	 		new A().close()		 // 둘이 다르다
	 */
	public static MemberDTO memberGetInfo(String id)
	{
		MemberDTO d = new MemberDTO();

		SqlSession session = ssf.openSession();	// 주소값을 받아놓는다(객체생성. 커넥션이 증가된다)
		d= session.selectOne("memberGetInfo",id);
		session.close();
		return d;
	}
	public static int memberIdcheck(String id)
	{
		SqlSession session = ssf.openSession();
		int count=session.selectOne("memberIdcheck",id);
		session.close();
		return count;
	}
	public static List<ZipcodeDTO> postFindData(String dong)
	{
		SqlSession session = ssf.openSession();
		List<ZipcodeDTO> list = session.selectList("postFindData",dong);
		session.close();
		return list;
		
	}
	public static void memberJoin(MemberDTO d)
	{
		SqlSession session = ssf.openSession(true);
		session.insert("memberJoin",d);
		session.close();
	}
}
