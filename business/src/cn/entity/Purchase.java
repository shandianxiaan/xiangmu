package cn.entity;

import java.io.Serializable;

public class Purchase implements Serializable{
    private Integer id;

    private Integer pnumber;

    private Integer total;

    private String message;

    private String muser;

    private String rtime;

    private Integer gid;
    private String status;
    
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

    
    public Purchase(){
    	
    }
    
    
	public Purchase(Integer id, Integer pnumber, Integer total, String message,
			String muser, String rtime, Integer gid, String goodsName,
			String batch, String license, String productAddress,
			Integer number, String goodSize, String packaging, Integer price,
			Integer warnshort, String sname, String status, String tname, Integer warnhight) {
		
		this.id = id;
		this.pnumber = pnumber;
		this.status = status;
		this.total = total;
		this.message = message;
		this.muser = muser;
		this.rtime = rtime;
		this.gid = gid;
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

	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPnumber() {
		return pnumber;
	}

	public void setPnumber(Integer pnumber) {
		this.pnumber = pnumber;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMuser() {
		return muser;
	}

	public void setMuser(String muser) {
		this.muser = muser;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getProductAddress() {
		return productAddress;
	}

	public void setProductAddress(String productAddress) {
		this.productAddress = productAddress;
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
		this.goodSize = goodSize;
	}

	public String getPackaging() {
		return packaging;
	}

	public void setPackaging(String packaging) {
		this.packaging = packaging;
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
		this.sname = sname;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Integer getWarnhight() {
		return warnhight;
	}

	public void setWarnhight(Integer warnhight) {
		this.warnhight = warnhight;
	}
    
    

   
}