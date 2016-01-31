package com.black.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.black.commons.dao.BaseDao;
import com.black.commons.util.Pager;
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
	
	public Pager findByHQLQuery(Map<String, Object> map, Pager pager) {
		StringBuffer sb=new StringBuffer("from About where 1=1 ");
        if(map!=null){
        	if(map.get("aboutId")!=null){
        		sb.append(" and aboutId='"+map.get("aboutId").toString()+"'");
        	}
        	if(map.get("name")!=null){
        		sb.append(" and name='"+map.get("name").toString()+"'");
        	}
        	if(map.get("date")!=null){
        		sb.append(" and date='"+map.get("date").toString()+"'");
        	}
        	if(map.get("status")!=null){
        		sb.append(" and status="+map.get("status"));
        	}
            /*if(map.get("yapindizhi")!=null){
                sb.append(" and FangBenDiZhi like "+"'%"+ map.get("yapindizhi").toString()+"%'");
            }*/
        }
        sb.append("  order by date desc");
		  return this.findByHQLQuery(sb.toString(), pager);
	}
}
