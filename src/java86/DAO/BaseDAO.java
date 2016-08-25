package java86.DAO;

import org.apache.ibatis.session.SqlSession;

import util.MyAppSqlConfig;

public abstract class BaseDAO {
	public static SqlSession sqlMapping;
	public BaseDAO(){
		sqlMapping = MyAppSqlConfig.getSqlSessionInstance();
		
	}
}
