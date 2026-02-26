package bakhtin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Главный контроллер для папки bakhtin
 * Перенаправляет на страницу с примерами
 */
@WebServlet({"/bakhtin", "/bakhtin/", "/bakhtin/home"})
public class FrontController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Перенаправляем на страницу basics с объяснениями
        req.getRequestDispatcher("/WEB-INF/basics.jsp").forward(req, resp);
    }
}
