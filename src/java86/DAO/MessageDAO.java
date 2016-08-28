package java86.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import java86.VO.FineVO;
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
	
	public void insertMessage(MessageVO msvo) {
		sqlMapping.insert("java86.DAO.insertMessage", msvo);
		sqlMapping.commit();
	} 
	public List<MessageVO> selectSendM(String memId ) {
		List<MessageVO> msList = sqlMapping.selectList("java86.DAO.selectSendM",memId);
		return msList;
	}
	public MessageVO selectRDetail(int mNo){
		MessageVO msvo = sqlMapping.selectOne("java86.DAO.selectRDetail", mNo);
		return msvo;
	}
	


}
