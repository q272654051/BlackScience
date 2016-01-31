package com.black.service.impl;

import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.black.commons.dao.BaseDao;
import com.black.commons.util.Pager;
import com.black.service.ICustomerService;
import com.black.vo.Customer;


/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
@Service
@Transactional
public class CustomerServiceImpl  extends BaseDao<Customer> implements ICustomerService{
    
    public CustomerServiceImpl() {
        this.setClazz(Customer.class);
    }
	@Override
	public boolean saveCustomer(Customer entity) {
		// TODO Auto-generated method stub
		return this.saveEntity(entity);
		
	}

	@Override
	public boolean updateCustomer(Customer id) {
		// TODO Auto-generated method stub
		return this.updateEntity(id);
	}

	@Override
	public boolean deleteCustomer(Customer entity) {
		// TODO Auto-generated method stub
		return this.deleteEntity(entity);
	}

	@Override
	public List<Customer> findCustomer() {
		// TODO Auto-generated method stub
		return this.findCustomer();
	}

	@Override
	public List<Customer> findCustomerByName(String name) {
		String sql = "from Customer u where u.userName = '"+name+"'";
		List<Customer> list = findByHQLQuery(sql);
		return list;
	}
	
	@Override
	public List<Customer> findCustomerByNameAndPwd(String name, String pwd) {
		String sql = "from Customer u where u.userName = '"+name+"' and pwd='"+pwd+"'";
		List<Customer> list = findByHQLQuery(sql);
		return list;
	}
	
	public Pager findByHQLQuery(Map<String, Object> map, Pager pager) {
		StringBuffer sb=new StringBuffer("from Customer where 1=1 ");
        if(map!=null){
        	if(map.get("kehuID")!=null){
        		sb.append(" and kehuId='"+map.get("kehuID").toString()+"'");
        	}
        	if(map.get("xingzhengqu")!=null){
        		sb.append(" and XingZhengQu='"+map.get("xingzhengqu").toString()+"'");
        	}
        	if(map.get("city")!=null){
        		sb.append(" and City='"+map.get("city").toString()+"'");
        	}
            if(map.get("yapindizhi")!=null){
                sb.append(" and FangBenDiZhi like "+"'%"+ map.get("yapindizhi").toString()+"%'");
            }
        }
        sb.append("  order by GuJiaShiDian desc");
		  return this.findByHQLQuery(sb.toString(), pager);
	}

}
