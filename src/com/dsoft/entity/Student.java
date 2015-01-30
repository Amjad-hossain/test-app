package com.dsoft.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.List;

/**
 * Created by amjad on 20/1/15.
 */
@Entity
@Table(name="student")
public class Student extends Profile {


    @ManyToOne
    @JoinColumn(name="standard_id")
    private Standard standard;

    @Column(name = "board_registration_no")
    private String boardRegistrationNo;

    @Column(name = "role_no")
    private String roleNo;

    /*@Transient
    private MultipartFile fileData;*/

    @Transient
    private String binaryFileData;

    @Transient
    private String imgSrcHtml;

    @Transient
    private List<Standard> standardList;

    public Standard getStandard() {
        return standard;
    }

    public void setStandard(Standard standard) {
        this.standard = standard;
    }

    public String getBoardRegistrationNo() {
        return boardRegistrationNo;
    }

    public void setBoardRegistrationNo(String boardRegistrationNo) {
        this.boardRegistrationNo = boardRegistrationNo;
    }

    public String getRoleNo() {
        return roleNo;
    }

    public void setRoleNo(String roleNo) {
        this.roleNo = roleNo;
    }

    @Override
    public String getBinaryFileData() {
        return binaryFileData;
    }

    @Override
    public void setBinaryFileData(String binaryFileData) {
        this.binaryFileData = binaryFileData;
    }

    public String getImgSrcHtml() {
        return imgSrcHtml;
    }

    public void setImgSrcHtml(String imgSrcHtml) {
        this.imgSrcHtml = imgSrcHtml;
    }

    public List<Standard> getStandardList() {
        return standardList;
    }

    public void setStandardList(List<Standard> standardList) {
        this.standardList = standardList;
    }

    @Override
    public String toString() {
        return "Student{" +
                "standard=" + standard +
                ", boardRegistrationNo='" + boardRegistrationNo + '\'' +
                ", roleNo='" + roleNo + '\'' +
                ", binaryFileData='" + binaryFileData + '\'' +
                ", imgSrcHtml='" + imgSrcHtml + '\'' +
                ", standardList=" + standardList +
                '}';
    }
}
