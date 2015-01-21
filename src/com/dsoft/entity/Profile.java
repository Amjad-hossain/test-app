package com.dsoft.entity;

import javax.persistence.*;

/**
 * Created by amjad on 20/1/15.
 */

@Entity
@Table(name="profile")
public class Profile{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "father_name")
    private String fatherName;

    @Column(name = "mother_name")
    private String motherName;

    @Column(name = "house_no")
    private String houseNo;

    @Column(name = "village_or_area")
    private String villageOrArea;

    @Column(name = "post_office")
    private String postOffice;

    @Column(name = "post_code")
    private String postCode;

    @Column(name = "thana")
    private String thana;

    @Column(name = "district")
    private String district;

    @Column(name = "role_no")
    private String roleNo;

    @Column(name = "photo_path")
    private String photoPath;

    @Column(name = "photo_name")
    private String photoName;

    @Column(name = "email")
    private String email;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getHouseNo() {
        return houseNo;
    }

    public void setHouseNo(String houseNo) {
        this.houseNo = houseNo;
    }

    public String getVillageOrArea() {
        return villageOrArea;
    }

    public void setVillageOrArea(String villageOrArea) {
        this.villageOrArea = villageOrArea;
    }

    public String getPostOffice() {
        return postOffice;
    }

    public void setPostOffice(String postOffice) {
        this.postOffice = postOffice;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getThana() {
        return thana;
    }

    public void setThana(String thana) {
        this.thana = thana;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getRoleNo() {
        return roleNo;
    }

    public void setRoleNo(String roleNo) {
        this.roleNo = roleNo;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", fatherName='" + fatherName + '\'' +
                ", motherName='" + motherName + '\'' +
                ", houseNo='" + houseNo + '\'' +
                ", villageOrArea='" + villageOrArea + '\'' +
                ", postOffice='" + postOffice + '\'' +
                ", postCode='" + postCode + '\'' +
                ", thana='" + thana + '\'' +
                ", district='" + district + '\'' +
                ", roleNo='" + roleNo + '\'' +
                ", photoPath='" + photoPath + '\'' +
                ", photoName='" + photoName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
public class Profile {

    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
