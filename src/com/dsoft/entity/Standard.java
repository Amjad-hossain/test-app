package com.dsoft.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by amjad on 20/1/15.
 */

@Entity
@Table(name = "standard")
public class Standard extends AbstractBaseEntity{

    @Column(name = "name")
    private String name;

    @Column(name = "code")
    private String code;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Standard{" +
                "name='" + name + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
