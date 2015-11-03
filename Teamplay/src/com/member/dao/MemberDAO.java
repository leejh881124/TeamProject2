package com.member.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	private static SqlSessionFactory ssf;	
	static  // static ��� ���.	 instance ������ �����ڿ��� �ڵ�
	{
		try
		{
			// xml �о��
			Reader reader = Resources.getResourceAsReader("Config.xml");	// �ѱ�: reader(2byte)
			// �Ľ�	�˾Ƽ� ������
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
	 		new A().close()		 // ���� �ٸ���
	 */
	public static MemberDTO memberGetInfo(String id)
	{
		MemberDTO d = new MemberDTO();

		SqlSession session = ssf.openSession();	// �ּҰ��� �޾Ƴ��´�(��ü����. Ŀ�ؼ��� �����ȴ�)
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
}
