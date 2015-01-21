package com.dsoft.entity;

/**
 * Created by amjad on 20/1/15.
 */

public class Student {
    

    private String studentId;
    private Profile profile;

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }
}
