/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.xiamen.chemistry.test.dao;

import com.xiamen.chemistry.common.persistence.CrudDao;
import com.xiamen.chemistry.common.persistence.annotation.MyBatisDao;
import com.xiamen.chemistry.test.entity.TestData;

/**
 * 单表生成DAO接口
 * @author ThinkGem
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestDataDao extends CrudDao<TestData> {
	
}