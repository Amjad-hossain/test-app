package com.dsoft.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by amjad on 2/1/15.
 */

@Entity
@Table(name = "Tuition_fee_type")
public class TuitionFeeType extends AbstractBaseEntity{

    private String type;
}
