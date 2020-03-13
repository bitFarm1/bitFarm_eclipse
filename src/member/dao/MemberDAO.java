package member.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.bean.AddrDTO;
import member.bean.MemberDTO;

public class MemberDAO {
	private static MemberDAO instance;
	private SqlSessionFactory sqlSessionFactory;
	
	public MemberDAO() {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	 
	public static MemberDAO getInstance() {
		if(instance == null) {
			synchronized (MemberDAO.class) {
				instance = new MemberDAO();
			}
		}
		return instance;
	}
	
	
	public boolean insert(MemberDTO dto) {
		boolean ck = false;
//		insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,sysdate)
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert("memberSQL.insert",dto);
		sqlSession.commit();
		sqlSession.close();	
		ck = true;
		return ck;
	}	
}
