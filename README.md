<p align="center">
  <img src="https://spring.io/images/spring-logo-2022-93c8b6d27b0e4a92b5f9b4aef7a2aebc.svg" width="120"/>
  <img src="https://ai.google.dev/static/site-assets/images/share.png" width="120"/>
</p>

<h1 align="center">Gemini Spring AI Demo</h1>

<p align="center">
  <b>Spring Boot + JSP + Google Gemini AI</b><br/>
  Simple AI-powered web application built for learning purposes
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Java-17-orange"/>
  <img src="https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen"/>
  <img src="https://img.shields.io/badge/View-JSP-blue"/>
  <img src="https://img.shields.io/badge/AI-Gemini-lightgrey"/>
</p>

---

## 📌 About This Project

This repository contains a simple **Spring Boot web application** that integrates **Google Gemini AI** using **manual REST API calls**.  
The frontend is built using **JSP**, and the backend follows the **Spring MVC** pattern.

This project was created as part of an academic assignment to explore:
- Spring AI concepts
- AI integration using REST API
- Server-side rendering with JSP
- Basic AI-assisted applications

The goal is not complexity, but **clarity and understanding**.

---

## ✨ Features

- ✅ **Hello World Page**  
  Basic page to confirm Spring MVC and JSP configuration.

- 🤖 **Gemini AI Chat Page**  
  Users can enter prompts and receive responses directly from Gemini AI.

- 🔗 **Manual REST API Integration**  
  No SDK or third-party AI library. All requests are sent via HTTP using `RestTemplate`.

- 🎨 **Simple & Clean UI**  
  JSP pages styled with embedded CSS for readability.

---

## 🧠 How the Application Works

1. User opens the chat page in the browser
2. A prompt is submitted via a form
3. Controller receives the request
4. Service layer sends a POST request to Gemini API
5. Gemini returns a response in JSON format
6. Response is parsed and rendered back to the JSP page

---

## 🗂 Project Structure

gemini-jsp-demo
│
├── src/main/java
│ └── com/example/geminijsp
│ ├── controller
│ │ ├── ChatController.java
│ │ └── HelloController.java
│ ├── service
│ │ └── GeminiService.java
│ └── config
│ └── WebConfig.java
│
├── src/main/webapp
│ └── WEB-INF/jsp
│ ├── chat.jsp
│ └── hello.jsp
│
├── pom.xml
└── README.md

🌐 Available Endpoints
Endpoint	Method	Description
/hello	GET	Hello World page
/	GET	Gemini chat page
/chat	POST	Send prompt to AI
