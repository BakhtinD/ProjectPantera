<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Базовая страница</title>
    <!-- Подключаем Bootstrap для красивого стиля -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-body">
                <h1 class="card-title">Базовая страница на сервлетах</h1>

                <hr>

                <!-- Чтение атрибутов из request с помощью JSP EL -->
                <h3>${message}</h3>
                <p>Добро пожаловать, <strong>${userName}</strong>!</p>

                <hr>

                <!-- Пример формы с POST запросом -->
                <h4>Тестовая форма</h4>
                <form action="hello" method="post" class="mt-3">
                    <div class="mb-3">
                        <label for="name" class="form-label">Ваше имя:</label>
                        <input type="text" class="form-control" id="name" name="name"
                               placeholder="Введите имя..." required>
                    </div>
                    <button type="submit" class="btn btn-primary">Отправить</button>
                </form>

                <hr>

                <div class="alert alert-info">
                    <strong>Как это работает:</strong>
                    <ul class="mb-0">
                        <li>Сервлет обрабатывает запрос по URL <code>/hello</code></li>
                        <li>Сервлет готовит данные и кладет их в <code>request.setAttribute()</code></li>
                        <li>Сервлет делает <code>forward</code> на JSP страницу</li>
                        <li>JSP использует <code>${attributeName}</code> для чтения данных</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>