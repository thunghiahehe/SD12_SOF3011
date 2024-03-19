package com.example.lab2.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "TamGiacServlet",
        value = {"/tam-giac", "/dien-tich", "/chu-vi"})
public class TamGiacServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/views/tam-giac.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        double a = Double.parseDouble(req.getParameter("a"));
        double b = Double.parseDouble(req.getParameter("b"));
        double c = Double.parseDouble(req.getParameter("c"));

        if ((a + b > c) && (a + c > b) && (b + c > a)) {

            double chuVi = (a + b + c);
            String uri = req.getRequestURI();
            if (uri.contains("dien-tich")) {
                double dienTich = Math.sqrt(chuVi * (a + b - c) * (a + c - b) * (b + c - a)) / 4;
                req.setAttribute("message", "Diện tích của tam giác là " + dienTich);
            } else {
                req.setAttribute("message", "Chu vi của tam giác là " + chuVi);
            }

        } else {
            req.setAttribute("message", "Không thỏa mãn các cạnh của một tam giác!");
        }

        req.getRequestDispatcher("/views/tam-giac.jsp").forward(req, resp);
    }
}