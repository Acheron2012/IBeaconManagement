package com.ictwsn.controller;

import com.ictwsn.entity.Apartment;
import com.ictwsn.entity.Entry;
import com.ictwsn.entity.Student;
import com.ictwsn.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class ApartmentController {

    public static Logger logger = LoggerFactory.getLogger(ApartmentController.class);

    private static final long serialVersionUID = -6030727340944647548L;

    @Resource
    ApartmentService apartmentService;

    @RequestMapping(value = "/apartment")
    public void apartment(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("main.jsp");
            return;
        }
        String type = req.getParameter("type");
        if (type == null) {
            return;
        }
        if (type.equals("1")) {//查询集合的方法   跳转apartment1.jsp
            List<Apartment> list = apartmentService.findApartmentList();
            req.getSession().setAttribute("listapartment", list);
            resp.sendRedirect("apartment1.jsp");
        } else if (type.equals("2")) {//查询集合的方法  跳转apartment2.jsp
            List<Apartment> list = apartmentService.findApartmentList();
            req.getSession().setAttribute("listapartment", list);
            resp.sendRedirect("apartment2.jsp");
        } else if (type.equals("3")) {//保存的方法
            String var1 = req.getParameter("var1");
            String var2 = req.getParameter("var2");
            String var3 = req.getParameter("var3");
            String var4 = req.getParameter("var4");
            String var5 = req.getParameter("var5");
            String var6 = req.getParameter("var6");
            if (var3 != null) {
                var3 = new String(var3.getBytes("ISO8859_1"), "UTF-8");
            }
            if (var5 != null) {
                var5 = new String(var5.getBytes("ISO8859_1"), "UTF-8");
            }
            if (var6 != null) {
                var6 = new String(var6.getBytes("ISO8859_1"), "UTF-8");
            }
            apartmentService.insertApartment(var1, var2, var3, var4, var5, var6);

            List<Apartment> list = apartmentService.findApartmentList();
            req.getSession().setAttribute("listapartment", list);
            resp.sendRedirect("apartment1.jsp");
        } else if (type.equals("4")) {//删除
            String id = req.getParameter("id");
            apartmentService.deleteApartment(Integer.valueOf(id));

            List<Apartment> list = apartmentService.findApartmentList();
            req.getSession().setAttribute("listapartment", list);
            resp.sendRedirect("apartment1.jsp");
        }
    }


    @RequestMapping(value = "/user")
    public void user(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String type = req.getParameter("type");
        if (type == null) {
            return;
        }
        String name = req.getParameter("name");
        String pwd = req.getParameter("pwd");
        if (type.equals("1")) {//实现登陆的方法
            User user = apartmentService.findUser(name, pwd);
            if (user != null) {
                req.getSession().setAttribute("user", user);
                List<Apartment> list = apartmentService.findApartmentList();
                req.getSession().setAttribute("listapartment", list);
                resp.sendRedirect("apartment1.jsp");
            } else {
                resp.sendRedirect("main.jsp");
            }
            return;
        }
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("main.jsp");
            return;
        }
        if (type.equals("2")) {//查询集合
            List<User> list = apartmentService.findUserList();
            req.getSession().setAttribute("listuser", list);
            resp.sendRedirect("user2.jsp");
        } else if (type.equals("3")) {//添加用户
            if (name != null && name.length() > 0 && pwd != null && pwd.length() > 0) {
                apartmentService.insertUser(name, pwd);
                List<User> list = apartmentService.findUserList();
                req.getSession().setAttribute("listuser", list);
                resp.sendRedirect("user2.jsp");
            }
        } else if (type.equals("4")) {//退出登录
            req.getSession().removeAttribute("user");
            resp.sendRedirect("index.jsp");
        } else if (type.equals("5")) {//删除
            String id = req.getParameter("id");
            apartmentService.deleteUser(Integer.valueOf(id));

            List<User> list = apartmentService.findUserList();
            req.getSession().setAttribute("listuser", list);
            resp.sendRedirect("user2.jsp");
        }
    }


    @RequestMapping(value = "/entry")
    public void entry(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("main.jsp");
            return;
        }
        String type = req.getParameter("type");
        if (type == null) {
            return;
        }
        if (type.equals("1")) {//查询集合
            List<Entry> list = apartmentService.findEntryList();
            req.getSession().setAttribute("listentry", list);
            resp.sendRedirect("entry1.jsp");
        } else if (type.equals("2")) {//查询学生及跳转entry2.jsp
            List<Student> list = apartmentService.findStudentList();
            req.getSession().setAttribute("liststudent", list);
            resp.sendRedirect("entry2.jsp");
        } else if (type.equals("3")) {//保存数据后查询技术刷新
            String var1 = req.getParameter("var1");
            String var2 = req.getParameter("var2");
            String var3 = req.getParameter("var3");
            if (var3 != null) {
                var3 = new String(var3.getBytes("ISO8859_1"), "UTF-8");
            }
            apartmentService.insertEntry(var1, var2, var3);

            List<Entry> list = apartmentService.findEntryList();
            req.getSession().setAttribute("listentry", list);
            resp.sendRedirect("entry1.jsp");
        } else if (type.equals("4")) {//删除
            String id = req.getParameter("id");
            apartmentService.deleteEntry(Integer.valueOf(id));

            List<Entry> list = apartmentService.findEntryList();
            req.getSession().setAttribute("listentry", list);
            resp.sendRedirect("entry1.jsp");
        }
    }

    @RequestMapping(value = "/student")
    public void student(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("main.jsp");
            return;
        }

        String type = req.getParameter("type");
        if (type == null) {
            return;
        }
        if (type.equals("1")) {//查询全部
            List<Student> list = apartmentService.findStudentList();
            req.getSession().setAttribute("liststudent", list);
            resp.sendRedirect("student1.jsp");
        } else if (type.equals("2")) {//实现跳转的同时查询数据，页面有下拉列表的时候用到
            List<Apartment> list = apartmentService.findApartmentList();
            req.getSession().setAttribute("listapartment", list);

            resp.sendRedirect("student2.jsp");
        } else if (type.equals("3")) {//保存数据后刷新
            String var1 = req.getParameter("var1");
            String var2 = req.getParameter("var2");
            String var3 = req.getParameter("var3");
            String var4 = req.getParameter("var4");
            if (var1 != null) {
                var1 = new String(var1.getBytes("ISO8859_1"), "UTF-8");
            }
            apartmentService.insertStudent(var1, var2, var3, var4);

            List<Student> list = apartmentService.findStudentList();
            req.getSession().setAttribute("liststudent", list);
            resp.sendRedirect("student1.jsp");
        } else if (type.equals("3")) {//删除
            String id = req.getParameter("id");
            apartmentService.deleteStudent(Integer.valueOf(id));

            List<Student> list = apartmentService.findStudentList();
            req.getSession().setAttribute("liststudent", list);
            resp.sendRedirect("student1.jsp");
        }

    }


}
