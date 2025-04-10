package com.repairsystem.controller;
import com.repairsystem.model.Ticket;
import com.repairsystem.dao.TicketRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/tickets")
public class TicketController {
    private final TicketRepository repo;
    public TicketController(TicketRepository repo) {
        this.repo = repo;
    }

    @GetMapping
    public String list(Model model) {
        model.addAttribute("tickets", repo.findAll());
        return "tickets/list";
    }

    @GetMapping("/new")
    public String form(Model model) {
        model.addAttribute("ticket", new Ticket());
        return "tickets/form";
    }

    @PostMapping
    public String create(@ModelAttribute Ticket ticket) {
        repo.save(ticket);
        return "redirect:/tickets";
    }
}