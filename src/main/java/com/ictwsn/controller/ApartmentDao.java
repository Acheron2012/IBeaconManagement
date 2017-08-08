package com.ictwsn.controller;


import com.ictwsn.entity.Apartment;
import com.ictwsn.entity.Entry;
import com.ictwsn.entity.Student;
import com.ictwsn.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ApartmentDao {
    //搜寻该用户是否有此设备id
    @Select("select * from user where username=#{0} and password=#{1}")
    User findUser(String username, String password);

    @Select("select * from user")
    List<User> findUsertList();

    @Delete("delete from user where user_id=#{0}")
    int deleteUser(Integer user_id);

    @Insert("insert into user(username,password) values(#{0},#{1})")
    int insertUser(String username, String password);


    @Select("SELECT a.*,(SELECT count(*) FROM student s where s.var4=a.id) var7 FROM apartment a")
    List<Apartment> findApartmentList();

    @Select("select * from apartment")
    Apartment findApartment();

    @Insert("insert into apartment(var1,var2,var3,var4,var5,var6) values(#{0},#{1},#{2},#{3},#{4},#{5})")
    int insertApartment(String var1, String var2, String var3, String var4, String var5, String var6);

    @Delete("delete from apartment where id=#{0}")
    int deleteApartment(Integer user_id);


    @Select("SELECT e.id,a.var3 var1,e.var2,e.var3,s.var1 var4,s.var2 var5,s.var3 var6,a.var1 var7,a.var2 var8 "
            + " from entry e LEFT JOIN student s ON e.var1=s.id LEFT JOIN apartment a ON s.var4=a.id")
    List<Entry> findEntryList();

    @Insert("insert into entry(var1,var2,var3) values(#{0},#{1},#{2)")
    int insertEntry(String var1, String var2, String var3);

    @Delete("delete from entry where id=#{0}")
    int deleteEntry(Integer id);


    @Select("SELECT s.id,s.var1,s.var2,s.var3,a.var1 var4,a.var2 var5,a.var3 var6,a.var4 var7,a.var5 var8"
            +" from student s LEFT JOIN apartment a ON s.var4=a.id")
    List<Student> findStudentList();


    @Insert("insert into student(var1,var2,var3,var4) values(#{0},#{1},#{2},#{3})")
    int insertStudent(String var1,String var2,String var3,String var4);

    @Delete("delete from student where id=#{0}")
    int deleteStudent(Integer id);


}
