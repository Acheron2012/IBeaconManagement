package com.ictwsn.controller;

import com.ictwsn.entity.Apartment;
import com.ictwsn.entity.Entry;
import com.ictwsn.entity.Student;
import com.ictwsn.entity.User;

import java.util.List;

/**
 * Created by Administrator on 2017-08-07.
 */
public interface ApartmentService {
    User findUser(String username, String password);
    List<User> findUserList();
    int deleteUser(Integer user_id);
    int insertUser(String username,String password);

    List<Apartment> findApartmentList();
    Apartment findApartment();
    int insertApartment(String var1,String var2,String var3,String var4,String var5,String var6);
    int deleteApartment(Integer user_id);

    List<Entry> findEntryList();
    int insertEntry(String var1, String var2, String var3);
    int deleteEntry(Integer id);


    int deleteStudent(Integer id);
    int insertStudent(String var1,String var2,String var3,String var4);
    List<Student> findStudentList();


}
