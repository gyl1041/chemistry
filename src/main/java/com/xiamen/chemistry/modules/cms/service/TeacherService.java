package com.xiamen.chemistry.modules.cms.service;

import com.xiamen.chemistry.modules.cms.dao.TeacherDao;
import com.xiamen.chemistry.modules.cms.entity.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(readOnly = true)
public class TeacherService {
    @Autowired
    TeacherDao teacherDao;

    @Transactional(readOnly = true)
    public Teacher get(int id) {
        return teacherDao.selectTeacher(id);
    }

    @Transactional(readOnly = false)
    public int insert(Teacher teacher) {
        return teacherDao.insert(teacher);
    }

    @Transactional(readOnly = false)
    public int updata(Teacher teacher) {
        return teacherDao.update(teacher);
    }
}
