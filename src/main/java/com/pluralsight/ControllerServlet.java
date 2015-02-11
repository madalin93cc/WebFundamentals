package com.pluralsight;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Colezea on 07/09/2014.
 */
public class ControllerServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        ApplicationSettings seting = new ApplicationSettings();
        Css css = new Css();
        css.setName("blueUser");
        seting.setFormCssClass(css);
        getServletContext().setAttribute("app", seting);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setName("Madalin");
        user.setEmail("mada@eu.ro");

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/index.jsp");
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }
}
