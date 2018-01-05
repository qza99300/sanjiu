package com.atwangsi.user.model;

import java.util.Date;

public class TbExchangeRecord {
    private Integer id;

    private Integer convertId;

    private String convertName;

    private String convertPhone;

    private Integer productId;

    private String productName;

    private Integer productIntegral;

    private String convertStatus;

    private String courierinteger;

    private String logisticsStatus;

    private String consigneePath;

    private Integer manageId;

    private Date disposeDate;

    private Date convertDate;

    private Date createDate;

    private String createBy;

    private String lastUpdatedBy;

    private Date lastUpdateDate;

    private Integer recordVersion;

    private Integer deletedFlag;

    private String deletedBy;

    private Date deletionDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getConvertId() {
        return convertId;
    }

    public void setConvertId(Integer convertId) {
        this.convertId = convertId;
    }

    public String getConvertName() {
        return convertName;
    }

    public void setConvertName(String convertName) {
        this.convertName = convertName == null ? null : convertName.trim();
    }

    public String getConvertPhone() {
        return convertPhone;
    }

    public void setConvertPhone(String convertPhone) {
        this.convertPhone = convertPhone == null ? null : convertPhone.trim();
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public Integer getProductIntegral() {
        return productIntegral;
    }

    public void setProductIntegral(Integer productIntegral) {
        this.productIntegral = productIntegral;
    }

    public String getConvertStatus() {
        return convertStatus;
    }

    public void setConvertStatus(String convertStatus) {
        this.convertStatus = convertStatus == null ? null : convertStatus.trim();
    }

    public String getCourierinteger() {
        return courierinteger;
    }

    public void setCourierinteger(String courierinteger) {
        this.courierinteger = courierinteger == null ? null : courierinteger.trim();
    }

    public String getLogisticsStatus() {
        return logisticsStatus;
    }

    public void setLogisticsStatus(String logisticsStatus) {
        this.logisticsStatus = logisticsStatus == null ? null : logisticsStatus.trim();
    }

    public String getConsigneePath() {
        return consigneePath;
    }

    public void setConsigneePath(String consigneePath) {
        this.consigneePath = consigneePath == null ? null : consigneePath.trim();
    }

    public Integer getManageId() {
        return manageId;
    }

    public void setManageId(Integer manageId) {
        this.manageId = manageId;
    }

    public Date getDisposeDate() {
        return disposeDate;
    }

    public void setDisposeDate(Date disposeDate) {
        this.disposeDate = disposeDate;
    }

    public Date getConvertDate() {
        return convertDate;
    }

    public void setConvertDate(Date convertDate) {
        this.convertDate = convertDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    public String getLastUpdatedBy() {
        return lastUpdatedBy;
    }

    public void setLastUpdatedBy(String lastUpdatedBy) {
        this.lastUpdatedBy = lastUpdatedBy == null ? null : lastUpdatedBy.trim();
    }

    public Date getLastUpdateDate() {
        return lastUpdateDate;
    }

    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }

    public Integer getRecordVersion() {
        return recordVersion;
    }

    public void setRecordVersion(Integer recordVersion) {
        this.recordVersion = recordVersion;
    }

    public Integer getDeletedFlag() {
        return deletedFlag;
    }

    public void setDeletedFlag(Integer deletedFlag) {
        this.deletedFlag = deletedFlag;
    }

    public String getDeletedBy() {
        return deletedBy;
    }

    public void setDeletedBy(String deletedBy) {
        this.deletedBy = deletedBy == null ? null : deletedBy.trim();
    }

    public Date getDeletionDate() {
        return deletionDate;
    }

    public void setDeletionDate(Date deletionDate) {
        this.deletionDate = deletionDate;
    }
}