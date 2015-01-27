package com.dsoft.entity;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.List;

/**
 * Created by amjad on 20/1/15.
 */
@Entity
@Table(name="student")
public class Student extends AbstractBaseEntity {


    @ManyToOne
    @JoinColumn(name="standard_id")
    private Standard standard;

    @Column(name = "board_registration_no")
    private String boardRegistrationNo;

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="profile_id")
    private Profile profile;

    /*@Transient
    private MultipartFile fileData;*/

    @Transient
    private String binaryFileData;

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

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public List<Standard> getStandardList() {
        return standardList;
    }

    public void setStandardList(List<Standard> standardList) {
        this.standardList = standardList;
    }

    public String getBinaryFileData() {
        return binaryFileData;
    }

    public void setBinaryFileData(String binaryFileData) {
        this.binaryFileData = binaryFileData;
    }

    @Override
    public String toString() {
        return "Student{" +
                "standard=" + standard +
                ", boardRegistrationNo='" + boardRegistrationNo + '\'' +
                ", profile=" + profile +
//                ", fileData=" + fileData +
                ", binaryFileData='" + binaryFileData + '\'' +
                '}';
    }
}
