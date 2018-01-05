package com.atwangsi.user.model;

import java.util.Date;

public class TbCollegeSynopsis {
    private Integer collegeId;

    private Integer userId;

    private String titleCollege;

    private String titleMaster;

    private Date createDate;

    public Integer getCollegeId() {
        return collegeId;
    }

    public void setCollegeId(Integer collegeId) {
        this.collegeId = collegeId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitleCollege() {
        return titleCollege;
    }

    public void setTitleCollege(String titleCollege) {
        this.titleCollege = titleCollege == null ? null : titleCollege.trim();
    }

    public String getTitleMaster() {
        return titleMaster;
    }

    public void setTitleMaster(String titleMaster) {
        this.titleMaster = titleMaster == null ? null : titleMaster.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}