package com.controller;
import java.io.File;
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import com.common.*;
// Model클래스를 모아서 관리 (Container)
public class WebApplicationContext {
	private Map clsMap=new HashMap();
	public WebApplicationContext(String path)
	{
		try
		{
			SAXParserFactory spf= SAXParserFactory.newInstance();
			SAXParser sp=spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(new File(path), hm);
			clsMap=hm.map;
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());			
		}
	}
	// 요청 클래스 전송
	public Model getBean(String id)
	{
		return (Model)clsMap.get(id);
	}
}
