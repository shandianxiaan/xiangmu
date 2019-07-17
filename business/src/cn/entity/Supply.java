package cn.entity;

import java.io.Serializable;

public class Supply implements Serializable{
    private Integer id;

    private String companyName;

    private String supplyAddress;

    private String supplyTele;

    private String sname;

    private String sphone;

    private String smail;

    private String sbank;

    private String saccount;

    public Supply(Integer id, String companyName, String supplyAddress, String supplyTele, String sname, String sphone, String smail, String sbank, String saccount) {
        this.id = id;
        this.companyName = companyName;
        this.supplyAddress = supplyAddress;
        this.supplyTele = supplyTele;
        this.sname = sname;
        this.sphone = sphone;
        this.smail = smail;
        this.sbank = sbank;
        this.saccount = saccount;
    }

    public Supply() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getSupplyAddress() {
        return supplyAddress;
    }

    public void setSupplyAddress(String supplyAddress) {
        this.supplyAddress = supplyAddress == null ? null : supplyAddress.trim();
    }

    public String getSupplyTele() {
        return supplyTele;
    }

    public void setSupplyTele(String supplyTele) {
        this.supplyTele = supplyTele == null ? null : supplyTele.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String sphone) {
        this.sphone = sphone == null ? null : sphone.trim();
    }

    public String getSmail() {
        return smail;
    }

    public void setSmail(String smail) {
        this.smail = smail == null ? null : smail.trim();
    }

    public String getSbank() {
        return sbank;
    }

    public void setSbank(String sbank) {
        this.sbank = sbank == null ? null : sbank.trim();
    }

    public String getSaccount() {
        return saccount;
    }

    public void setSaccount(String saccount) {
        this.saccount = saccount == null ? null : saccount.trim();
    }
}