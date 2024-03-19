package com.example.lab2.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

@WebServlet(name = "HitCounterServlet", value = "/HitCounterServlet")
public class HitCounterServlet extends HttpServlet {
    private int count;
    private Path path = Paths.get("C:/temp/count.txt");

    @Override
    public void init() throws ServletException {
        try {
            count = Integer.parseInt(Files.readAllLines(path).get(0));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        count++;
        req.setAttribute("count", count);
        req.getRequestDispatcher("/views/hit-counter.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        try {
            Files.write(path, String.valueOf(count).getBytes(StandardCharsets.UTF_8), StandardOpenOption.WRITE);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}