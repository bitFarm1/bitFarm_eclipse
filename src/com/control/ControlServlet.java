package com.control;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Map<String, Object> map = new HashMap<String, Object>();
	
	public void init(ServletConfig config) {
		String propertyConfig = config.getInitParameter("propertyConfig");
		System.out.println("propertyConfig = " + propertyConfig + "\n");
		
		FileInputStream fin = null;
		Properties properties = new Properties();
		
		try {
			fin = new FileInputStream(propertyConfig);
			properties.load(fin);
			System.out.println("properties = " + properties);
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				fin.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println();
		
		Iterator it = properties.keySet().iterator();
		while(it.hasNext()) {
			String key = (String)it.next();
			System.out.println("key = " + key);
			
			String className = properties.getProperty(key);
			System.out.println("className = " + className);
			
			try {
				//Class classType = Class.forName(className);
				//Object ob = classType.newInstance(); - @Deprecated

				//Class<?> classType = Class.forName(className);
				//Object ob = classType.getDeclaredConstructor().newInstance();

				Class<?> classType = Class.forName(className);
				Object ob = classType.newInstance();
				
				System.out.println("ob = " + ob);
				
				map.put(key, ob);
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} 
			//catch (InvocationTargetException e) {
			//	e.printStackTrace();
			//} catch (NoSuchMethodException e) {
			//	e.printStackTrace();
			//} catch (SecurityException e) {
			//	e.printStackTrace();
			//}
			
			System.out.println();
		}//while
		
	}
       
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		//주소보임, 한글처리 알아서 해줌
 		execute(request, response);
 	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//주소 안보임, 한글처리 따로 해야함
		execute(request, response);
	}
	
	//모든 요청을 servlet이 다 받기때문에 doGet/doPost을 따로 나눠서 받을 수 없음
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println();
		
		//한글처리, doPost방식으로 받았니? "POST" 반드시 대문자로 써야함
		//getMethod는 form태그의 method값을 얻어오는 것임
		if(request.getMethod().equals("POST")){
			request.setCharacterEncoding("UTF-8");
		}
		
		//http://localhost:8080/miniproject/main/index.do 요청
		String category = request.getServletPath();
		System.out.println("category = " + category);
		
		CommandProcess commandProcess = (CommandProcess)map.get(category);
		System.out.println("commandProcess = " + commandProcess);
		
		String view = null;
		try {
			view = commandProcess.requestPro(request, response);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		//forward	
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);//상대번지
		dispatcher.forward(request, response);//제어권 넘기기
	}
}
