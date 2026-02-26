<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Тестовая форма</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h3 class="mb-0">Привет, ${name}</h3>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="mb-3">
                    <label for="text" class="form-label">Введите текст:</label>
                    <input type="text" class="form-control" id="text" name="text"
                           placeholder="Введите что-нибудь..." required>
                </div>

                <button type="submit" class="btn btn-primary w-100">Отправить</button>
            </form>
        </div>
    </div>

</div>
</body>
</html>
