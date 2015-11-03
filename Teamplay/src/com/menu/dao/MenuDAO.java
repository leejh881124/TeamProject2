package com.menu.dao;
import java.sql.*;
import java.util.*;
import java.io.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MenuDAO {
     
	private static SqlSessionFactory ssf;
	static{
		try
	   {
		   Reader reader=Resources.getResourceAsReader("Config.xml");
		   ssf=new SqlSessionFactoryBuilder().build(reader);
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	}
   public static List<MenuDTO> menuListData(int tno)
   {
      List<MenuDTO> list = new ArrayList<MenuDTO>();      
      SqlSession session=null;
	   try
	   {
		   
		   
		   session=ssf.openSession();
		   list=session.selectList("menuListData",tno);
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
	}   

  
}