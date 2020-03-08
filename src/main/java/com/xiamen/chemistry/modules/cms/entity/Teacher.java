package com.xiamen.chemistry.modules.cms.entity;

import com.xiamen.chemistry.common.persistence.DataEntity;

import java.util.Date;

public class Teacher extends DataEntity<Teacher> {
    private static final long serialVersionUID = 1L;
    private int idNum;
    private String name;  //姓名
    private String image;    //头像
    private String title;  //教授职称
    private String introduce;//教授介绍
    private Date createTime; //创建时间
    private Date updateTime;  //更新时间

    public int getIdNum() {
        return idNum;
    }

    public void setIdNum(int idNum) {
        this.idNum = idNum;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
