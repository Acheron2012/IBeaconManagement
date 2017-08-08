package com.ictwsn.controller;

import com.ictwsn.entity.Apartment;
import com.ictwsn.entity.Entry;
import com.ictwsn.entity.Student;
import com.ictwsn.entity.User;
import com.ictwsn.utils.BaseDao;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ApartmentServiceImpl extends BaseDao implements ApartmentService {


    public User findUser(String username, String password) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findUser(username, password);
    }

    public List<User> findUserList() {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findUsertList();
    }

    public int deleteUser(Integer user_id) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).deleteUser(user_id);
    }

    public int insertUser(String username, String password) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).insertUser(username, password);
    }

    public List<Apartment> findApartmentList() {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findApartmentList();
    }

    public Apartment findApartment() {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findApartment();
    }

    public int insertApartment(String var1, String var2, String var3, String var4, String var5, String var6) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).insertApartment(var1,var2,var3,var4,var5,var6);
    }

    public int deleteApartment(Integer user_id) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).deleteApartment(user_id);
    }

    public List<Entry> findEntryList() {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findEntryList();
    }

    public int insertEntry(String var1, String var2, String var3) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).insertEntry(var1,var2,var3);
    }

    public int deleteEntry(Integer id) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).deleteEntry(id);
    }

    public int deleteStudent(Integer id) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).deleteStudent(id);
    }


    public int insertStudent(String var1, String var2, String var3, String var4) {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).insertStudent(var1,var2,var3,var4);
    }

    public List<Student> findStudentList() {
        return this.sqlSessionTemplate.getMapper(ApartmentDao.class).findStudentList();
    }
}
