package com.StefanApp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StefanApp.model.Book;
import com.StefanApp.model.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepo;
	
	public ArrayList<Book> getAllBooks()
	{
		ArrayList<Book> lb=new ArrayList<>();
		 bookRepo.findAll().forEach(lb::add);
		 return lb;
	}
	public Book getBookByID(int id)
	{
		return bookRepo.findById(id).get();
	}
	public ArrayList<Book> getBooksByAuthorID(int authorID)
	{
		return bookRepo.findByAuthorAuthorID(authorID);
	}
	public void insertBook(Book book)
	{
		bookRepo.save(book);
	}
	public void deleteBookByID(int id)
	{
		bookRepo.deleteById(id);
	}
	public void updateBook(Book book)
	{
		bookRepo.save(book);
	}
}
