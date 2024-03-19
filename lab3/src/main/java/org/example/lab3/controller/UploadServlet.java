package org.example.lab3.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;

@WebServlet(name = "UploadServlet", value = "/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/upload/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // đường dẫn thư mục tính từ gốc của website
        File dir = new File(req.getServletContext().getRealPath("/files"));
        if (!dir.exists()) {  // tạo nếu chưa tồn tại
            dir.mkdirs();
        }
        // lưu các file upload vào thư mục files
        Part photo = req.getPart("photo_file");//file hình
        File photoFile = new File(dir, photo.getSubmittedFileName());
        photo.write(photoFile.getAbsolutePath());

        Part doc = req.getPart("doc_file");//file tài liệu
        File docFile = new File(dir, doc.getSubmittedFileName());
        doc.write(docFile.getAbsolutePath());

        // chia sẻ cho result.jsp để hiển thị
        req.setAttribute("img", photoFile);
        req.setAttribute("doc", docFile);

        req.getRequestDispatcher("/views/upload/result.jsp").forward(req, resp);
    }
}