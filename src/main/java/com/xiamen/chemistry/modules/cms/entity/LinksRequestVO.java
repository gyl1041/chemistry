package com.xiamen.chemistry.modules.cms.entity;

import java.util.Date;

public class LinksRequestVO {
    private Integer LinksId;
    private String LinksName;
    private String LinksUrl;
    private Integer LinksAvailable;
    private Date LinksCreateTime;
    private Date LinksUpdateTime;

    public Integer getLinksId() {
        return LinksId;
    }

    public void setLinksId(Integer linksId) {
        LinksId = linksId;
    }

    public String getLinksName() {
        return LinksName;
    }

    public void setLinksName(String linksName) {
        LinksName = linksName;
    }

    public String getLinksUrl() {
        return LinksUrl;
    }

    public void setLinksUrl(String linksUrl) {
        LinksUrl = linksUrl;
    }

    public Integer getLinksAvailable() {
        return LinksAvailable;
    }

    public void setLinksAvailable(Integer linksAvailable) {
        LinksAvailable = linksAvailable;
    }

    public Date getLinksCreateTime() {
        return LinksCreateTime;
    }

    public void setLinksCreateTime(Date linksCreateTime) {
        LinksCreateTime = linksCreateTime;
    }

    public Date getLinksUpdateTime() {
        return LinksUpdateTime;
    }

    public void setLinksUpdateTime(Date linksUpdateTime) {
        LinksUpdateTime = linksUpdateTime;
    }
}
