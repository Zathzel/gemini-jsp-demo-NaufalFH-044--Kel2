<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Gemini AI Chat</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: "Segoe UI", Roboto, Arial, sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #333;
        }

        .chat-container {
            width: 100%;
            max-width: 720px;
            background: #ffffff;
            border-radius: 14px;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.25);
            padding: 28px 32px 32px;
        }

        .chat-header {
            text-align: center;
            margin-bottom: 24px;
        }

        .chat-header h2 {
            margin: 0;
            font-size: 26px;
            color: #2c5364;
            letter-spacing: 0.3px;
        }

        .chat-header p {
            margin-top: 8px;
            font-size: 14px;
            color: #666;
        }

        form {
            margin-bottom: 24px;
        }

        textarea {
            width: 100%;
            min-height: 120px;
            resize: vertical;
            padding: 14px 16px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            line-height: 1.5;
            outline: none;
            transition: border 0.2s, box-shadow 0.2s;
        }

        textarea:focus {
            border-color: #2c5364;
            box-shadow: 0 0 0 3px rgba(44, 83, 100, 0.15);
        }

        .actions {
            text-align: right;
            margin-top: 14px;
        }

        button {
            background: linear-gradient(135deg, #2c5364, #203a43);
            color: #fff;
            border: none;
            padding: 10px 22px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.15s, box-shadow 0.15s, opacity 0.15s;
        }

        button:hover {
            transform: translateY(-1px);
            box-shadow: 0 8px 20px rgba(32, 58, 67, 0.35);
            opacity: 0.95;
        }

        button:active {
            transform: translateY(0);
            box-shadow: 0 4px 10px rgba(32, 58, 67, 0.25);
        }

        .response-box {
            margin-top: 18px;
            padding: 18px 20px;
            background: #f7f9fb;
            border-left: 4px solid #2c5364;
            border-radius: 10px;
        }

        .response-box h3 {
            margin: 0 0 10px;
            font-size: 16px;
            color: #2c5364;
        }

        pre {
            margin: 0;
            white-space: pre-wrap;
            word-wrap: break-word;
            font-size: 14px;
            line-height: 1.6;
            color: #222;
        }

        @media (max-width: 600px) {
            .chat-container {
                margin: 16px;
                padding: 22px;
            }

            .chat-header h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>

<div class="chat-container">
    <div class="chat-header">
        <h2>Gemini AI Chat</h2>
        <p>Ask anything and get instant AI-powered responses</p>
    </div>

    <form action="/chat" method="post">
        <textarea name="prompt" placeholder="Type your question here...">${prompt}</textarea>
        <div class="actions">
            <button type="submit">Send</button>
        </div>
    </form>

    <c:if test="${not empty response}">
        <div class="response-box">
            <h3>Response</h3>
            <pre>${response}</pre>
        </div>
    </c:if>
</div>

</body>
</html>
