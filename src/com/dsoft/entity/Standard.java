package com.dsoft.entity;

import javax.persistence.*;

/**
 * Created by amjad on 20/1/15.
 */

@Entity
@Table(name = "standard")
public class Standard{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "standard_name")
    private String standardName;

    @Column(name = "code")
    private String code;

    @Column(name = "section")
    private String section;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStandardName() {
        return standardName;
    }

    public void setStandardName(String standardName) {
        this.standardName = standardName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    @Override
    public String toString() {
        return "Standard{" +
                "id=" + id +
                ", standardName='" + standardName + '\'' +
                ", code='" + code + '\'' +
                ", section='" + section + '\'' +
                '}';
    }
}
