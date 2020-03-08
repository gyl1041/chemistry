package com.xiamen.chemistry.modules.cms.service;

import com.xiamen.chemistry.modules.cms.dao.LinksDao;
import com.xiamen.chemistry.modules.cms.entity.Links;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LinksService {
    @Autowired
    LinksDao linksDao;

    public Integer insertLink(Links links) {
        System.out.println("插入友情连接");
        return linksDao.insertLink(links);
    }


    public Integer updateLink(Links links) {
        System.out.println("更新友情连接");
        return linksDao.updateLink(links);
    }

    public List<Links> getLinks() {
        System.out.println("获取友情连接");
        return linksDao.getLinks();
    }

}
