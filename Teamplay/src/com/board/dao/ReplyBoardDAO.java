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
public class ReplyBoardDAO {
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
   
   public static List<ReplyBoardDTO> boardListData(Map map)
   {
	   List<ReplyBoardDTO> list=
			   new ArrayList<ReplyBoardDTO>();
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
 
   public static void boardInsert(ReplyBoardDTO d)
   {
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession(true);
		   session.insert("boardInsert",d);
		   //session.commit();
	   }catch(Exception ex)
	   {
		   //session.rollback();
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		  if(session!=null)
			  session.close();
	   }
   }
 public static ReplyBoardDTO boardContentData(int no,int type)
   {
	   SqlSession session=null;
	   ReplyBoardDTO d=new ReplyBoardDTO();
	   try
	   {
		   session=ssf.openSession(true);
		   if(type==1)
		   {
			   session.update("boardHitIncrement",no);
		   }
		   //session.commit();
		   d=session.selectOne("boardContentData", no);
	   }catch(Exception ex)
	   {
		   //session.rollback();
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		  if(session!=null)
			  session.close();
	   }
	   return d;
   }
}






