package com.dsoft.entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * Created by amjad on 21/1/15.
 */


public class StudentTuitionFee {

    private Long id;

    @ManyToOne
    @JoinColumn(name="student_id")
    private Student student;

    @ManyToOne
    @JoinColumn(name="tuition_fee_id")
    private TuitionFee tuitionFee;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public TuitionFee getTuitionFee() {
        return tuitionFee;
    }

    public void setTuitionFee(TuitionFee tuitionFee) {
        this.tuitionFee = tuitionFee;
    }
}
