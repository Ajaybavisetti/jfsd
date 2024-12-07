package com.ecom.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ecom.model.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {
}
