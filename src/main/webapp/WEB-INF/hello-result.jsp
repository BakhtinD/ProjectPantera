<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Результат формы</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow">
            <div class="card-body">
                <h1 class="card-title">Результат отправки формы</h1>

                <div class="alert alert-success">
                    <h4>Привет, ${submittedName}!</h4>
                    <p>Это данные, которые пришли из формы через POST запрос.</p>
                </div>

                <hr>

                <a href="hello" class="btn btn-secondary">← Вернуться назад</a>
            </div>
        </div>
    </div>
</body>
</html>