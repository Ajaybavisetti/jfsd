package com.ecom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.model.Contact;
import com.ecom.repository.ContactRepository;

@Service
public class ContactService {

    @Autowired
    private ContactRepository contactRepository;

    
   
}
