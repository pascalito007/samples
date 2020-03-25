package com.pratice.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {
    private static final String INDEX_FILE="index";

    @GetMapping(value = {"/", "/index"})
    public String index(Model model){
        return INDEX_FILE;
    }
}
