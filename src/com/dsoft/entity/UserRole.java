package com.dsoft.entity;

import javax.persistence.Column;
import javax.persistence.ManyToOne;

/**
 * Created by amjad on 20/1/15.
 */


public class UserRole {

    @ManyToOne
    @Column(name = "user_id")
    private User user;

}
