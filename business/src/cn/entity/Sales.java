package cn.entity;

import java.io.Serializable;

public class Sales implements Serializable{
    private Integer id;

    private String muser;

    private Integer cnumber;

    private Integer sprice;

    private Integer sTotal;

    private Integer discout;

    private String rtime;

    private Integer gid;
    
    
    private String status;

    private Integer cid;

    private String goodsName;

    private String batch;

    private String license;

    private String productAddress;

    private Integer number;

    private String goodSize;

    private String packaging;

    private Integer warnshort;

    private String sname;

    private String tname;

    private Integer warnhight;
    
    private String customerName;

    public Sales(){
    	
    }

    
    
	public Sales(Integer id, String muser, Integer cnumber, Integer sprice,
			Integer sTotal, Integer discout, String rtime, Integer gid,
			Integer cid, String goodsName, String batch, String license,
			String productAddress, Integer number, String goodSize,
			String packaging, Integer warnshort, String sname, String tname,
			Integer warnhight,String status, String customerName) {
	
		this.id = id;
		this.muser = muser;
		this.status = status;
		this.cnumber = cnumber;
		this.sprice = sprice;
		this.sTotal = sTotal;
		this.discout = discout;
		this.rtime = rtime;
		this.gid = gid;
		this.cid = cid;
		this.goodsName = goodsName;
		this.batch = batch;
		this.license = license;
		this.productAddress = productAddress;
		this.number = number;
		this.goodSize = goodSize;
		this.packaging = packaging;
		this.warnshort = warnshort;
		this.sname = sname;
		this.tname = tname;
		this.warnhight = warnhight;
		this.customerName = customerName;
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

	public String getMuser() {
		return muser;
	}

	public void setMuser(String muser) {
		this.muser = muser;
	}

	public Integer getCnumber() {
		return cnumber;
	}

	public void setCnumber(Integer cnumber) {
		this.cnumber = cnumber;
	}

	public Integer getSprice() {
		return sprice;
	}

	public void setSprice(Integer sprice) {
		this.sprice = sprice;
	}

	public Integer getsTotal() {
		return sTotal;
	}

	public void setsTotal(Integer sTotal) {
		this.sTotal = sTotal;
	}

	public Integer getDiscout() {
		return discout;
	}

	public void setDiscout(Integer discout) {
		this.discout = discout;
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

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
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

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
    
	
    
}