package com.ecom.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.ecom.model.Contact;
import com.ecom.repository.ContactRepository;

@RestController
@RequestMapping("/api/contact")
public class ContactController {

    @Autowired
    private ContactRepository contactRepository;

    @PostMapping
    public String saveContact(@RequestBody Contact contact) {
        contactRepository.save(contact);
        return "Contact saved successfully!";
    }
    
}
