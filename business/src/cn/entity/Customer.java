package cn.entity;

import java.io.Serializable;

public class Customer  implements Serializable{
    private Integer id;

    private String customerName;

    private String customerAddress;

    private String customerTele;

    private String cname;

    private String cphone;

    private String identity;

    private String cmail;

    private String cbank;

    private String caccount;

    public Customer(Integer id, String customerName, String customerAddress, String customerTele, String cname, String cphone, String identity, String cmail, String cbank, String caccount) {
        this.id = id;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerTele = customerTele;
        this.cname = cname;
        this.cphone = cphone;
        this.identity = identity;
        this.cmail = cmail;
        this.cbank = cbank;
        this.caccount = caccount;
    }

    public Customer() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName == null ? null : customerName.trim();
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress == null ? null : customerAddress.trim();
    }

    public String getCustomerTele() {
        return customerTele;
    }

    public void setCustomerTele(String customerTele) {
        this.customerTele = customerTele == null ? null : customerTele.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone == null ? null : cphone.trim();
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public String getCmail() {
        return cmail;
    }

    public void setCmail(String cmail) {
        this.cmail = cmail == null ? null : cmail.trim();
    }

    public String getCbank() {
        return cbank;
    }

    public void setCbank(String cbank) {
        this.cbank = cbank == null ? null : cbank.trim();
    }

    public String getCaccount() {
        return caccount;
    }

    public void setCaccount(String caccount) {
        this.caccount = caccount == null ? null : caccount.trim();
    }
}