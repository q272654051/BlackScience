package com.black.service.impl;

import java.util.List;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.black.commons.dao.BaseDao;
import com.black.service.IUserService;
import com.black.vo.User;


/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
@Service
@Transactional
public class UserServiceImpl  extends BaseDao<User> implements IUserService{
    
    public UserServiceImpl() {
        this.setClazz(User.class);
    }
	@Override
	public boolean saveUser(User entity) {
		return this.saveEntity(entity);
		
	}

	@Override
	public boolean updateUser(User id) {
		return this.updateEntity(id);
	}

	@Override
	public boolean deleteUser(User entity) {
		return this.deleteEntity(entity);
	}

	@Override
	public List<User> findUser() {
		String sql = "from User u where 1=1";
		return this.findAlllist(sql);
	}

	@Override
	public List<User> findUserByName(String name) {
		String sql = "from User u where u.userName = '"+name+"'";
		List<User> list = findByHQLQuery(sql);
		return list;
	}
	
	@Override
	public List<User> findUserByNameAndPwd(String name, String pwd) {
		String sql = "from User u where u.userName = '"+name+"' and pwd='"+pwd+"'";
		List<User> list = findByHQLQuery(sql);
		return list;
	}

}
