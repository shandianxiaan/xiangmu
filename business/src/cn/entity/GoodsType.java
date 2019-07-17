package cn.entity;

import java.io.Serializable;

public class GoodsType implements Serializable{
    private Integer id;

    private String typeName;

    public GoodsType(Integer id, String typeName) {
        this.id = id;
        this.typeName = typeName;
    }

    public GoodsType() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }
}