package com.black.service;

import java.io.Serializable;
import java.util.List;

import com.black.commons.dao.IBaseDAO;
import com.black.vo.User;

/**
 * 
 * @author djx
 * @date 2016-1-23
 * @description
 */
public interface IUserService extends IBaseDAO<User, Serializable>{

	//保存
	public boolean saveUser (User entity);
	//修改
	public boolean updateUser (User id);
	//删除
	public boolean deleteUser (User entity);
	//查询
	public List<User> findUser ();
	//
	public List<User> findUserByName(String name);
	//根据用户名和密码登陆
	public List<User> findUserByNameAndPwd(String name,String pwd);
	
}
