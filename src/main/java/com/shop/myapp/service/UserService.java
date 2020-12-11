package com.shop.myapp.service;

import com.shop.myapp.user.UserVO;

public interface UserService {
	public int insertUser(UserVO vo);
	public int updateUser(int uid);
	public int deleteUser(int uid);
	public UserVO getUser(UserVO vo);
}
