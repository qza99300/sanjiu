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

    private Integer convertStatus;

    private String courierinteger;

    private String logisticsStatus;

    private String consigneePath;

    private Date createDate;

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

    public Integer getConvertStatus() {
        return convertStatus;
    }

    public void setConvertStatus(Integer convertStatus) {
        this.convertStatus = convertStatus;
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

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}