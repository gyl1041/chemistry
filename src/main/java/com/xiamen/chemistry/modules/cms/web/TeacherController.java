package com.xiamen.chemistry.modules.cms.web;

import com.xiamen.chemistry.modules.cms.entity.Teacher;
import com.xiamen.chemistry.modules.cms.service.TeacherService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

/**
 * 修改老师基本信息接口
 *
 * @author gyl
 * @date 2019/10/21 17:37
 */
@Controller
@RequestMapping(value = "${adminPath}/sys/teacher")
public class TeacherController {
    private static final Logger LOGGER = LoggerFactory.getLogger(TeacherController.class);
    @Autowired
    TeacherService teacherService;

    @RequestMapping(value = "info")
    public String setInfo(Model model ){
        LOGGER.info("新建或更新教授信息");

        Teacher teacher = new Teacher();
        teacher.setName("张三");
        teacher.setImage("asad");
        teacher.setTitle("adsda");
        teacher.setIntroduce("asdsad");
        teacher.setCreateTime(new Date());
        teacher.setUpdateTime(new Date());
        teacherService.insert(teacher);
        model.addAttribute("teacher",teacher);
        return "modules/cms/teacherInfo";
    }
}
