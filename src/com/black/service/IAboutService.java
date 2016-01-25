package com.black.service;

import java.io.Serializable;

import com.black.commons.dao.IBaseDAO;
import com.black.vo.About;


/**
 * @author djx
 * @date 2015-8-17
 * @description
 */
public interface IAboutService extends IBaseDAO<About, Serializable>{

	//保存
	public boolean saveAbout (About entity);
	//修改
	public boolean updateAbout (About id);
	//删除
	public boolean deleteAbout (About entity);
	//查询
	public About findAboutById (Serializable id);
	//
	public About findAboutByName(String name);
	
}
