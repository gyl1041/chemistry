package com.xiamen.chemistry.modules.cms.web;

import com.xiamen.chemistry.common.utils.StringUtils;
import com.xiamen.chemistry.modules.cms.entity.Links;
import com.xiamen.chemistry.modules.cms.entity.LinksRequestVO;
import com.xiamen.chemistry.modules.cms.entity.Professor;
import com.xiamen.chemistry.modules.cms.entity.Teacher;
import com.xiamen.chemistry.modules.cms.service.LinksService;
import com.xiamen.chemistry.modules.cms.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;

import static com.xiamen.chemistry.common.config.Global.getConfig;

@RequestMapping(value = "${adminPath}/professor")
@Controller
public class ProfessorInfoController {

    @Autowired
    TeacherService teacherService;

    @Autowired
    LinksService linksService;

    @RequestMapping(value = "")
    public String infoIndex(Model model) {

        System.out.println("请求教授信息页面");
        Teacher teacher = teacherService.get(1);
        List<Links> links = linksService.getLinks();
        model.addAttribute("teacher", teacher);
        model.addAttribute("links", links);

        return "modules/cms/front/themes/basic/professor_info";
    }

    @RequestMapping(value = "delate")
    public String delate(Integer id, Model model) {
        Links link = new Links();
        System.out.println("delate");
        link.setId(id);
        link.setAvailable(0);
        linksService.updateLink(link);
        Teacher teacher = teacherService.get(1);
        List<Links> links = linksService.getLinks();
        model.addAttribute("teacher", teacher);
        model.addAttribute("links", links);
        return "modules/cms/front/themes/basic/professor_info";
    }

    @RequestMapping(value = "update")
    public String updataInfo(Model model, MultipartFile photo, Professor professor, HttpServletRequest request, LinksRequestVO links) {

        Teacher teacher = new Teacher();
        teacher.setName(professor.getName());
        teacher.setTitle(professor.getTitle());
        teacher.setIntroduce(professor.getSynopsis());
        System.out.println("保存教授信息页面");
        Map<String, Object> map = new HashMap<String, Object>();
        File targetFile = null;
        System.out.println(photo);
        String fileName = photo.getOriginalFilename();//获取文件名加后缀
        String path = "";
        if (fileName != null && fileName != "") {
            path = getConfig("photo.url"); //文件存储位置
            String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
            fileName = new Date().getTime() + "_" + new Random().nextInt(1000) + fileF;//新的文件名

            //获取文件夹路径
            File file1 = new File(path + "/");
            //如果文件夹不存在则创建
            if (!file1.exists() && !file1.isDirectory()) {
                file1.mkdir();
            }
            //将图片存入文件夹
            targetFile = new File(file1, fileName);
            System.out.println("文件名:" + path + fileName);
            try {
                //将上传的文件写到服务器上指定的文件。
                photo.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();

            }
        }
        teacher.setIdNum(1);
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/userfiles/teacher/" + fileName;
        System.out.println(url);
        if (StringUtils.isNotBlank(fileName)) {
            System.out.println("saveImage");
            teacher.setImage(url);
        }else {
            System.out.println("not saveImage");
        }
        teacher.setUpdateTime(new Date());
        teacherService.updata(teacher);

        if (StringUtils.isNotBlank(links.getLinksName())) {
            Links links1 = new Links();
            links1.setName(links.getLinksName());
            links1.setUrl(links.getLinksUrl());
            links1.setAvailable(1);
            links1.setCreateTime(new Date());
            links1.setUpdateTime(new Date());
            linksService.insertLink(links1);
        }
        Teacher teacher1 = teacherService.get(1);
        List<Links> links1 = linksService.getLinks();
        model.addAttribute("teacher", teacher1);
        model.addAttribute("links", links1);

        return "modules/cms/front/themes/basic/professor_info";
    }
}
