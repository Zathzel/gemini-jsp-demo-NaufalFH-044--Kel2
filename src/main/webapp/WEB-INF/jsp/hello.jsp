<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello World</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", Roboto, Arial, sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: radial-gradient(circle at top, #1d2671, #c33764);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        .hello-card {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(12px);
            border-radius: 16px;
            padding: 40px 48px;
            text-align: center;
            box-shadow: 0 30px 70px rgba(0, 0, 0, 0.35);
            max-width: 520px;
            width: 90%;
        }

        .hello-card h1 {
            margin: 0 0 14px;
            font-size: 36px;
            letter-spacing: 0.5px;
        }

        .hello-card p {
            margin: 0 0 28px;
            font-size: 16px;
            opacity: 0.9;
        }

        .hello-card a {
            display: inline-block;
            text-decoration: none;
            padding: 12px 26px;
            border-radius: 30px;
            background: #ffffff;
            color: #c33764;
            font-weight: 600;
            font-size: 14px;
            transition: transform 0.15s, box-shadow 0.15s;
        }

        .hello-card a:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.35);
        }
    </style>
</head>
<body>

<div class="hello-card">
    <h1>Hello, World 👋</h1>
    <p>
        ini buatan kelompok 2 untuk tugas RPL Lanjut<br>
        anggota Kelompok:<br>
        1. Alden lee<br>
        1. Naufal Faalih Hakim<br>
        1. Fajri Nafisa<br>
    </p>
    <a href="/">Go to Gemini Chat</a>
</div>

</body>
</html>
