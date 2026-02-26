package bakhtin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet({"/bakhtin", "/bakhtin/", "/bakhtin/home"})
public class FrontController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("name", "user");
        req.getRequestDispatcher("/WEB-INF/main.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String text = req.getParameter("text");
        req.setAttribute("name", text);
        req.getRequestDispatcher("/WEB-INF/main.jsp").forward(req, resp);
    }
}
