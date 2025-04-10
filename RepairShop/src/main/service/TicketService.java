package com.repairsystem.service;

import com.repairsystem.dao.TicketDAO;
import com.repairsystem.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketService {
    
    @Autowired
    private TicketDAO ticketDao;
    
    public Ticket getById(int id) {
        return ticketDao.findById(id).orElse(null);
    }
    
    public void createTicket(Ticket ticket) {
        ticketDao.save(ticket);
    }
    
    public void updateTicket(Ticket ticket) {
        ticketDao.save(ticket);
    }
    
    public void deleteTicket(int id) {
        ticketDao.deleteById(id);
    }
}