package com.StefanApp.model;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface BookRepository  extends CrudRepository<Book, Integer>{
public ArrayList<Book> findByAuthorAuthorID(int authorID);
}
