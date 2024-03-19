package com.example.lab1.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ChuNhatServlet", value = "/ChuNhatServlet")
public class ChuNhatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("views/bai6/form-chu-nhat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String a = req.getParameter("dai");
        double dai = Double.parseDouble(a);

        String b = req.getParameter("rong");
        double rong = Double.parseDouble(b);

        req.setAttribute("s", dai * rong);
        req.setAttribute("c", (dai + rong) * 2);
        req.getRequestDispatcher("views/bai6/ket-qua.jsp").forward(req, resp);
    }
}