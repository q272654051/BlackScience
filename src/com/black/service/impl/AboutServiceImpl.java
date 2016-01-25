package com.black.service.impl;

import java.io.Serializable;
import java.util.List;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.black.commons.dao.BaseDao;
import com.black.service.IAboutService;
import com.black.vo.About;


/**
 * 
 * @author djx
 * @date 2016-1-22
 * @description
 */
@Service
@Transactional
public class AboutServiceImpl  extends BaseDao<About> implements IAboutService{
    
    public AboutServiceImpl() {
        this.setClazz(About.class);
    }
	@Override
	public boolean saveAbout(About entity) {
		return this.saveEntity(entity);
		
	}

	@Override
	public boolean updateAbout(About entity) {
		return this.updateEntity(entity);
	}

	@Override
	public boolean deleteAbout(About entity) {
		return this.deleteEntity(entity);
	}

	@Override
	public About findAboutById(Serializable id) {
		return this.findById(id);
	}

	@Override
	public About findAboutByName(String name) {
		String sql = "from About a where a.name = '"+name+"'";
		About about = new About();
		List<About> list = findByHQLQuery(sql);
		if(list.size()>0){
			about = list.get(0);
		}
		return about;
	}
	
}
