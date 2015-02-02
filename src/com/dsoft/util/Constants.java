package com.dsoft.util;

public class Constants {

    public static final String MESSAGE_FILE_PATH = "../configurations/messages/messages_en.properties";
    public static final String APPLICATION_CONFIGURATION_FILE_PATH = "../configurations/properties/database.properties";
    public static final String MONTH_DAY_YEAR_UNDER_SCORE="MMddyyyy";
    public static final String USER="User";
    public static final String USER_TABLE="user";
    public static final String STUDENT_CLASS="Student";
    public static final String STUDENT_TABLE="student";
    public static final String STUDENT_TABLE_JOIN_WITH_PROFILE_QUERY="LEFT JOIN standard ON(student.standard_id = standard.id)";
    public static final String MONTH_DAY_YEAR="MM/dd/yyyy";
}
