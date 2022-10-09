package kr.co.papajohns.dto;

import java.util.Date;

public class UserForm {
    private String id;
    private String password;
    private String name;
    private String email;
    private String tel;
    private String phone;
    private Date birth;
    private String gender;
    private String authority;
    private String createdDate;

    public UserForm() {}

    public UserForm(String id, String password, String name, String email, String tel, String phone, Date birth,
                    String gender, String authority, String createdDate) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.email = email;
        this.tel = tel;
        this.phone = phone;
        this.birth = birth;
        this.gender = gender;
        this.authority = authority;
        this.createdDate = createdDate;
    }

}
