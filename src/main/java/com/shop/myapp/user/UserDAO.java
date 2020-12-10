package com.shop.myapp.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertUser(UserVO vo) {
		int result = sqlSession.insert("User.insertUser", vo);
		return result;
	}
	
	public int updateUser(int uid) {
		int result = sqlSession.update("User.updateUser", uid);
		return result;
	}
	
	public int deleteUser(int uid) {
		int result = sqlSession.delete("User.deleteUser", uid);
		return result;
	}
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
}
