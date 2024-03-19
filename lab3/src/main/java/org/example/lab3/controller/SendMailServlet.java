package org.example.lab3.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "SendMailServlet", value = "/mail/send")
public class SendMailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/mail-form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //khai báo thông số smtp server
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");//chứng thực
        props.put("mail.smtp.starttls.enable", "true");//bảo mật, gửi
        props.put("mail.smtp.host", "smtp.gmail.com");//mail server của google
        //cổng vào ra của dữ liệu
        props.put("mail.smtp.port", "587");
        //kết nối smtp server
        final String username = "maymimim.1202@gmail.com";
        final String password = "gbye pqau ayid srhd";
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(username, password);
            }
        });

        //lấy giá trị từ mail-form.jsp
        String to = req.getParameter("to");
        String subject = req.getParameter("subject");
        String content = req.getParameter("content");
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(content);
            Transport.send(message);
            req.setAttribute("message","Sent successfully!");
            System.out.println("Successfully");
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/views/mail-form.jsp").forward(req, resp);
    }
}