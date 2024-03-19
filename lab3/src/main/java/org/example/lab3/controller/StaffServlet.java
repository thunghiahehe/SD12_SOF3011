package org.example.lab3.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;
import org.example.lab3.model.Staff;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

@WebServlet(name = "StaffServlet", value = "/staff")
@MultipartConfig
public class StaffServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/staff/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        File dir = new File(req.getServletContext().getRealPath("/files"));
        if (!dir.exists()) {
            dir.mkdirs();
        }
        Part photo = req.getPart("photo_file");
        File photoFile = new File(dir, photo.getSubmittedFileName());
        photo.write(photoFile.getAbsolutePath());
        try {
            DateTimeConverter dtc = new DateConverter(new Date());
            dtc.setPattern("MM/dd/yyyy");
            ConvertUtils.register(dtc, Date.class);

            Staff staff = new Staff();
            staff.setPhoto(photoFile.getName());
            BeanUtils.populate(staff, req.getParameterMap());

            req.setAttribute("bean", staff);

        } catch (Exception e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/views/staff/result.jsp").forward(req, resp);
    }
}