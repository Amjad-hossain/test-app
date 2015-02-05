package com.dsoft.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by amjad on 20/1/15.
 */

@Entity
@Table(name="tuition_fee")
public class TuitionFee extends AbstractBaseEntity {

    @Column(name = "fee_type")
    private String feeType;

    private Double amount;

    @Column(name = "due_amount")
    private Double dueAmount;

    @Column(name = "effective_date")
    private Date effectiveDate;

    private Boolean flag;

    @ManyToOne
    @JoinColumn(name="standard_id")
    private Standard standard;

    @Transient
    List<TuitionFee> tuitionFeeList;
    @Transient
    String effDateStr;
    @Transient
    String editBtnHtml;
    @Transient
    String disableBtnHtml;
    @Transient
    String standardStr;
    @Transient
    String enableOrDisableHtml;



    public String getFeeType() {
        return feeType;
    }

    public void setFeeType(String feeType) {
        this.feeType = feeType;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getDueAmount() {
        return dueAmount;
    }

    public void setDueAmount(Double dueAmount) {
        this.dueAmount = dueAmount;
    }

    public Date getEffectiveDate() {
        return effectiveDate;
    }

    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }

    public Standard getStandard() {
        return standard;
    }

    public void setStandard(Standard standard) {
        this.standard = standard;
    }

    public List<TuitionFee> getTuitionFeeList() {
        return tuitionFeeList;
    }

    public void setTuitionFeeList(List<TuitionFee> tuitionFeeList) {
        this.tuitionFeeList = tuitionFeeList;
    }

    public String getEffDateStr() {
        return effDateStr;
    }

    public void setEffDateStr(String effDateStr) {
        this.effDateStr = effDateStr;
    }

    public String getEditBtnHtml() {
        return editBtnHtml;
    }

    public void setEditBtnHtml(String editBtnHtml) {
        this.editBtnHtml = editBtnHtml;
    }

    public String getDisableBtnHtml() {
        return disableBtnHtml;
    }

    public void setDisableBtnHtml(String disableBtnHtml) {
        this.disableBtnHtml = disableBtnHtml;
    }

    public String getStandardStr() {
        return standardStr;
    }

    public void setStandardStr(String standardStr) {
        this.standardStr = standardStr;
    }

    public String getEnableOrDisableHtml() {
        return enableOrDisableHtml;
    }

    public void setEnableOrDisableHtml(String enableOrDisableHtml) {
        this.enableOrDisableHtml = enableOrDisableHtml;
    }

    @Override
    public String toString() {
        return "TuitionFee{" +
                "feeType='" + feeType + '\'' +
                ", amount=" + amount +
                ", dueAmount=" + dueAmount +
                ", effectiveDate=" + effectiveDate +
                ", flag=" + flag +
                ", standard=" + standard +
                ", tuitionFeeList=" + tuitionFeeList +
                ", effDateStr='" + effDateStr + '\'' +
                ", editBtnHtml='" + editBtnHtml + '\'' +
                ", disableBtnHtml='" + disableBtnHtml + '\'' +
                ", standardStr='" + standardStr + '\'' +
                ", enableOrDisableHtml='" + enableOrDisableHtml + '\'' +
                '}';
    }
}
