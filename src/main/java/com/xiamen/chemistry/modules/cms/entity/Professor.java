package com.xiamen.chemistry.modules.cms.entity;
/*
* 教授信息实体类
* */

import org.springframework.web.multipart.MultipartFile;

public class Professor {
    private String name;
    private String title;
    private String synopsis;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

}
