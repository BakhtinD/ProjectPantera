<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Основы сервлетов и JSP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-4">
    <h1 class="mb-4">Основы сервлетов и JSP</h1>

    <!-- Основные концепции -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Основные концепции</h4>
        </div>
        <div class="card-body">
            <ul class="list-group">
                <c:forEach var="concept" items="${concepts}">
                    <li class="list-group-item">✓ ${concept}</li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <!-- Структура сервлета -->
    <div class="card mb-4">
        <div class="card-header bg-success text-white">
            <h4 class="mb-0">Структура сервлета</h4>
        </div>
        <div class="card-body">
                <pre class="bg-dark text-light p-3 rounded"><code>@WebServlet("/url")
public class MyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Обработка GET запроса

        // 1. Подготовка данных
        req.setAttribute("key", "value");

        // 2. Forward на JSP
        req.getRequestDispatcher("/WEB-INF/page.jsp")
           .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Обработка POST запроса (форма)

        // 1. Получение данных из формы
        String param = req.getParameter("paramName");

        // 2. Обработка...

        // 3. Redirect (изменяет URL в браузере)
        resp.sendRedirect("/success");
    }
}</code></pre>
        </div>
    </div>

    <!-- JSP синтаксис -->
    <div class="card mb-4">
        <div class="card-header bg-warning text-dark">
            <h4 class="mb-0">JSP - основные конструкции</h4>
        </div>
        <div class="card-body">
            <h5>1. JSP EL (Expression Language) - чтение данных</h5>
            <pre class="bg-light p-2 rounded mb-3"><code>${attributeName}           // Атрибут request/session/application
${param.paramName}        // Параметр запроса
${requestScope.user.name} // Свойство объекта
${1 + 2}                 // Выражения: 3
${user.name != null}     // Условия</code></pre>

            <h5>2. JSTL - теги для логики</h5>
            <pre class="bg-light p-2 rounded mb-3"><code>&lt;%@ taglib uri="..." prefix="c" %&gt;

&lt;c:forEach var="item" items="${list}"&gt;
    ${item.name}
&lt;/c:forEach&gt;

&lt;c:if test="${user.admin}"&gt;
    &lt;a href="/admin"&gt;Админка&lt;/a&gt;
&lt;/c:if&gt;</code></pre>

            <h5>3. Скриптлеты (устаревший способ)</h5>
            <pre class="bg-light p-2 rounded"><code>&lt;% String msg = "Привет"; %&gt;
&lt;%= msg %&gt;</code></pre>
            <div class="alert alert-warning">
                <strong>⚠️ Не используйте скриптлеты!</strong> Используйте EL и JSTL вместо них.
            </div>
        </div>
    </div>

    <!-- Forward vs Redirect -->
    <div class="card mb-4">
        <div class="card-header bg-info text-white">
            <h4 class="mb-0">Forward vs Redirect</h4>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <h5>Forward</h5>
                    <ul>
                        <li>Остаётся на том же URL</li>
                        <li>Данные request передаются</li>
                        <li>Быстрее (один запрос)</li>
                        <li><code>request.getRequestDispatcher().forward()</code></li>
                    </ul>
                    <pre class="bg-light p-2"><code>// URL: /hello
// Контент: /WEB-INF/hello.jsp
req.getRequestDispatcher("/WEB-INF/page.jsp")
   .forward(req, resp);</code></pre>
                </div>
                <div class="col-md-6">
                    <h5>Redirect</h5>
                    <ul>
                        <li>URL меняется в браузере</li>
                        <li>Данные request теряются</li>
                        <li>Два запроса (два HTTP ответа)</li>
                        <li><code>response.sendRedirect()</code></li>
                    </ul>
                    <pre class="bg-light p-2"><code>// URL: /success
// Контент: /WEB-INF/success.jsp
resp.sendRedirect("/success");</code></pre>
                </div>
            </div>
        </div>
    </div>

    <!-- Примеры использования -->
    <div class="card mb-4">
        <div class="card-header bg-secondary text-white">
            <h4 class="mb-0">Попробовать примеры</h4>
        </div>
        <div class="card-body">
            <div class="d-grid gap-2 d-md-flex">
                <a href="hello" class="btn btn-primary">
                    Базовая страница (/hello)
                </a>
                <a href="hello" class="btn btn-success">
                    Заполнить форму
                </a>
            </div>
            <p class="mt-2 text-muted">
                Время генерации страницы: ${currentTime}
            </p>
        </div>
    </div>
</div>
</body>
</html>