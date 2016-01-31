package com.black.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.black.commons.dao.IBaseDAO;
import com.black.commons.util.Pager;
import com.black.vo.Customer;


/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
public interface ICustomerService extends IBaseDAO<Customer, Serializable>{

	//保存
	public boolean saveCustomer (Customer entity);
	//修改
	public boolean updateCustomer (Customer id);
	//删除
	public boolean deleteCustomer (Customer entity);
	//查询
	public List<Customer> findCustomer ();
	//
	public List<Customer> findCustomerByName(String name);
	//根据用户名和密码登陆
	public List<Customer> findCustomerByNameAndPwd(String name,String pwd);

	public Pager findByHQLQuery(Map<String, Object> map, Pager pager);
}
