package com.example.lab2.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "DangKyServlet", value = "/dang-ky")
public class DangKyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/dang-ky/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        String userName = req.getParameter("username");
        boolean gender = Boolean.parseBoolean(req.getParameter("gender"));
        boolean married = (req.getParameter("married")) != null;
        String country = req.getParameter("country");
        String[] hobbies = req.getParameterValues("hobbies");

        System.out.println(">> username: " + userName);
        System.out.println(">> gender: " + gender);
        System.out.println(">> married: " + married);
        System.out.println(">> country: " + country);
        System.out.println(">> hobbies: " + Arrays.toString(hobbies));

        req.getRequestDispatcher("/views/dang-ky/result.jsp").forward(req, resp);
    }
}