package cn.entity;

import java.io.Serializable;

public class Goods implements Serializable{
    private Integer id;

    private String goodsName;

    private String batch;

    private String license;

    private String productAddress;

    private Integer number;

    private String goodSize;

    private String packaging;

    private Integer price;

    private Integer warnshort;

    private String sname;

    private String tname;

    private Integer warnhight;

    public Goods(Integer id, String goodsName, String batch, String license, String productAddress, Integer number, String goodSize, String packaging, Integer price, Integer warnshort, String sname, String tname, Integer warnhight) {
        this.id = id;
        this.goodsName = goodsName;
        this.batch = batch;
        this.license = license;
        this.productAddress = productAddress;
        this.number = number;
        this.goodSize = goodSize;
        this.packaging = packaging;
        this.price = price;
        this.warnshort = warnshort;
        this.sname = sname;
        this.tname = tname;
        this.warnhight = warnhight;
    }

    public Goods() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch == null ? null : batch.trim();
    }

    public String getLicense() {
        return license;
    }

    public void setLicense(String license) {
        this.license = license == null ? null : license.trim();
    }

    public String getProductAddress() {
        return productAddress;
    }

    public void setProductAddress(String productAddress) {
        this.productAddress = productAddress == null ? null : productAddress.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getGoodSize() {
        return goodSize;
    }

    public void setGoodSize(String goodSize) {
        this.goodSize = goodSize == null ? null : goodSize.trim();
    }

    public String getPackaging() {
        return packaging;
    }

    public void setPackaging(String packaging) {
        this.packaging = packaging == null ? null : packaging.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getWarnshort() {
        return warnshort;
    }

    public void setWarnshort(Integer warnshort) {
        this.warnshort = warnshort;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public Integer getWarnhight() {
        return warnhight;
    }

    public void setWarnhight(Integer warnhight) {
        this.warnhight = warnhight;
    }
}