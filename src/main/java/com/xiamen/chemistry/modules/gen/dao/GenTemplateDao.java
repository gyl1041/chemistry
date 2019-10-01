/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.xiamen.chemistry.modules.gen.dao;

import com.xiamen.chemistry.common.persistence.CrudDao;
import com.xiamen.chemistry.common.persistence.annotation.MyBatisDao;
import com.xiamen.chemistry.modules.gen.entity.GenTemplate;

/**
 * 代码模板DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTemplateDao extends CrudDao<GenTemplate> {
	
}
