package com.dsoft.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by amjad on 2/1/15.
 */

@Entity
@Table(name = "Tuition_fee_type")
public class TuitionFeeType extends AbstractBaseEntity{

    private String type;
    @Column(name = "description")
    private String desc;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return "TuitionFeeType{" +
                "type='" + type + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
}
