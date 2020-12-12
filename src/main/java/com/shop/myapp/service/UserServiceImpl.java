package com.shop.myapp.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.myapp.user.UserDAO;
import com.shop.myapp.user.UserVO;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;
	
	@Override
	public int insertUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.insertUser(vo);
	}

	@Override
	public int updateUser(int uid) {
		// TODO Auto-generated method stub
		return userDAO.updateUser(uid);
	}

	@Override
	public int deleteUser(int uid) {
		// TODO Auto-generated method stub
		return userDAO.deleteUser(uid);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.getUser(vo);
	}

//	@Override
//	public boolean loginCheck(UserVO vo, HttpSession session) {
//		boolean result = userDAO.logincheck(vo);
//		if(result) {
//			UserVO vo2 = getUser(vo);
//			session.setAttribute("uid", vo2.getUid());
//			session.setAttribute("username", vo2.getUsername());
//		}
//		return result;
//	}

}
