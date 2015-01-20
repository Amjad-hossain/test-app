package com.dsoft.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by amjad on 20/1/15.
 */

@Entity
@Table(name="tuition_fee")
public class TuitionFee extends AbstractBaseEntity{

    @Column(name = "payment_date")
    private Date paymentDate;

    private String paymentForMonth;
    private String paymentMethod;
    private Long paymentAmount;
    private Long dueAmount;

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getPaymentForMonth() {
        return paymentForMonth;
    }

    public void setPaymentForMonth(String paymentForMonth) {
        this.paymentForMonth = paymentForMonth;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public Long getPaymentAmount() {
        return paymentAmount;
    }

    public void setPaymentAmount(Long paymentAmount) {
        this.paymentAmount = paymentAmount;
    }

    public Long getDueAmount() {
        return dueAmount;
    }

    public void setDueAmount(Long dueAmount) {
        this.dueAmount = dueAmount;
    }
}
