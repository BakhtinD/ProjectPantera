package bakhtin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Сервлет, демонстрирующий основные концепции сервлетов и JSP
 */
@WebServlet("/basics")
public class BasicsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Примеры данных разных типов
        List<String> concepts = new ArrayList<>();
        concepts.add("Сервлет обрабатывает HTTP запросы");
        concepts.add("JSP генерирует HTML ответ");
        concepts.add("request - объект с данными запроса");
        concepts.add("response - объект для отправки ответа");
        concepts.add("session - хранилище данных пользователя между запросами");

        request.setAttribute("concepts", concepts);
        request.setAttribute("currentTime", System.currentTimeMillis());

        request.getRequestDispatcher("/WEB-INF/basics.jsp").forward(request, response);
    }
}