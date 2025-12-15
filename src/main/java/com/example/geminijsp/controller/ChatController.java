package com.example.geminijsp.controller;

import com.example.geminijsp.service.GeminiService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {

    private final GeminiService geminiService;

    public ChatController(GeminiService geminiService) {
        this.geminiService = geminiService;
    }

    @GetMapping("/")
    public String chatPage() {
        return "chat";
    }

    @PostMapping("/chat")
    public String chat(
            @RequestParam String prompt,
            Model model
    ) {
        String response = geminiService.askGemini(prompt);
        model.addAttribute("prompt", prompt);
        model.addAttribute("response", response);
        return "chat";
    }
}
