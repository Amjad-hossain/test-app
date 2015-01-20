package com.dsoft.entity;

import javax.persistence.*;

/**
 * Created by amjad on 20/1/15.
 */
@Entity
@Table(name="student")
public class Student extends AbstractBaseEntity {

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="standard_id")
    private Standard standard;

    @Column(name = "board_registration_no")
    private String boardRegistrationNo;

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="tuition_fee_id")
    private TuitionFee tuitionFee;


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

    public TuitionFee getTuitionFee() {
        return tuitionFee;
    }

    public void setTuitionFee(TuitionFee tuitionFee) {
        this.tuitionFee = tuitionFee;
    }
}
