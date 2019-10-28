package com.xiamen.chemistry.modules.cms.dao;

import com.xiamen.chemistry.common.persistence.CrudDao;
import com.xiamen.chemistry.common.persistence.annotation.MyBatisDao;
import com.xiamen.chemistry.modules.cms.entity.Teacher;

@MyBatisDao
public interface TeacherDao extends CrudDao<Teacher> {
    Teacher selectTeacher(int id);
}
