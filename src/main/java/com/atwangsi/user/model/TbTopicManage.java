package com.atwangsi.user.model;

import java.util.Date;

public class TbTopicManage {
    private Integer topicId;

    private Integer userId;

    private String topicMatter;

    private Integer likeCount;

    private String userName;

    private Date createDate;

    private byte[] picture;

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTopicMatter() {
        return topicMatter;
    }

    public void setTopicMatter(String topicMatter) {
        this.topicMatter = topicMatter == null ? null : topicMatter.trim();
    }

    public Integer getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(Integer likeCount) {
        this.likeCount = likeCount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }
}