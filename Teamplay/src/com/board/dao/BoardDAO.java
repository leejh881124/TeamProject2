package com.board.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/*
 *   class A
 *   {
 *       int a=10;
 *       
 *       {
 *          a=20;
 *       }
 *       
 *       public A()
 *       {
 *          a=30;
 *       }
 *   }
 *   A aa=new A();  => 30
 */
import java.util.*;
import java.io.*;
public class BoardDAO {
   private static SqlSessionFactory ssf;
   static
   {
	   try
	   {
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   ssf=new SqlSessionFactoryBuilder().build(reader);
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
   }
   // 데이터 가지고 오기 
   
   public static List<BoardDTO> boardListData(Map map)
   {
	   List<BoardDTO> list=
			   new ArrayList<BoardDTO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("boardListData",map);
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
	   //return ssf.openSession().selectList("boardListData",map);
   }
   // 총페이지
   public static int boardTotalPage()
   {
	   int total=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   int count=session.selectOne("boardRowCount");
		   total=(int)(Math.ceil(count/9.0));
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return total;
   }
   public static void boardInsert(BoardDTO d)
	{
		SqlSession session = null;
		try
		{
			session = ssf.openSession(true);	// 오토커밋
			session.insert("boardInsert",d);
			
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
	public static BoardDTO boardContentData(int no) 
	{
		SqlSession session = null;
		BoardDTO d = new BoardDTO();
		try 
		{
			session = ssf.openSession(true);
			session.update("boardHitIncrement", no);
			d = session.selectOne("boardContentData", no);
		} catch (Exception ex) {
			// session.rollback();
			System.out.println(ex.getMessage());
		}
		finally
		{
			if (session != null)
				session.close();
		}
		return d;
	}
	
	public static void boardDelete(int no)
	{
		SqlSession session = null;
		try
		{
			session = ssf.openSession();
			session.delete("boardDelete", no);	// 게시물 삭제
			session.commit();
		}catch(Exception ex)
		{
			session.rollback();
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
	public static BoardDTO boardUpdateData(int no)
	{
		SqlSession session = null;
		BoardDTO d = new BoardDTO();
		try
		{
			session = ssf.openSession(true);	
			d = session.selectOne("boardContentData", no);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return d;
	}
	public static void boardUpdate(BoardDTO d)
	{
		SqlSession session = null;
		try
		{
			session = ssf.openSession(true);	// 오토커밋
			session.insert("boardUpdate",d);
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}
	
	public static BoardDTO boardRecIncrement(int no) 
	{
		SqlSession session = null;
		BoardDTO d = new BoardDTO();
		try 
		{
			session = ssf.openSession(true);
			session.update("boardRecIncrement", no);
			d = session.selectOne("boardContentData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		finally
		{
			if (session != null)
				session.close();
		}
		return d;
	}
}






