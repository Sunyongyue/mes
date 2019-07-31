package com.common.system.entity;

public class Test {
    private int id;
    private String testname;
    private String testpassword;

    public Test(int id, String testname, String testpassword) {
        this.id = id;
        this.testname = testname;
        this.testpassword = testpassword;
    }
    public Test(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTestname() {
        return testname;
    }

    public void setTestname(String testname) {
        this.testname = testname;
    }

    public String getTestpassword() {
        return testpassword;
    }

    public void setTestpassword(String testpassword) {
        this.testpassword = testpassword;
    }

    @Override
    public String toString() {
        return "Test{" +
                "id=" + id +
                ", testname='" + testname + '\'' +
                ", testpassword='" + testpassword + '\'' +
                '}';
    }
}
