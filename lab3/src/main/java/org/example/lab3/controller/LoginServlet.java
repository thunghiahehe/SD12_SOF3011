package org.example.lab3.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.example.lab3.utils.CookieUtils;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = CookieUtils.get("username", req);
        String password = CookieUtils.get("password", req);
        req.setAttribute("username", username);
        req.setAttribute("password", password);
        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");

        if (!username.equalsIgnoreCase("thunghiahehe")) {
            req.setAttribute("message", "Sai tên đăng nhập!");
        } else if (password.length() < 6) {
            req.setAttribute("message", "Sai mật khẩu!");
        } else {
            req.setAttribute("message", "Đăng nhập thành công!");

            int hours = (remember == null) ? 0 : 30 * 24; // 0 = xóa
            CookieUtils.add("username", username, hours, resp);
            CookieUtils.add("password", password, hours, resp);
        }
        req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
    }
}