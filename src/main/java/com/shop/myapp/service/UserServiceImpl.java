package com.shop.myapp.service;

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

}
