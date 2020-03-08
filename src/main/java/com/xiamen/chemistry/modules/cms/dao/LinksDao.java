package com.xiamen.chemistry.modules.cms.dao;

import com.xiamen.chemistry.common.persistence.annotation.MyBatisDao;
import com.xiamen.chemistry.modules.cms.entity.Links;

import java.util.List;
@MyBatisDao
public interface LinksDao {
    Integer insertLink(Links links);

    Integer updateLink(Links links);

    List<Links> getLinks();

}
