package java86.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.MessageVO;
import util.MyAppSqlConfig;

public class MessageDAO {
	public static SqlSession sqlMapping;
	public MessageDAO () {
		sqlMapping = MyAppSqlConfig.getSqlSessionInstance();
	}

	public List<MessageVO> selectRecvM(String memId ) {
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectRecvM",memId);
		return msList;
	}


}
