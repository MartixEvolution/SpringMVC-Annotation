package com.taobao.enity;

import java.util.Arrays;

/**
 * Created by xiangyang.laixiang on 2016/6/17.
 */
public class User {

    private String userName;
    private int age;
    private String[] mySelects;

    public User() {
    }

    public User(String[] mySelects, String userName, int age) {
        this.mySelects = mySelects;
        this.userName = userName;
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", age=" + age +
                ", mySelects=" + Arrays.toString(mySelects) +
                '}';
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    public String[] getMySelects() {
        return mySelects;
    }

    public void setMySelects(String[] mySelects) {
        this.mySelects = mySelects;
    }
}
