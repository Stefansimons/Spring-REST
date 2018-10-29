package com.StefanApp.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.StefanApp.model.Author;
import com.StefanApp.model.Book;

import com.StefanApp.service.BookService;

@RestController
//@Controller
@RequestMapping("/book")
public class BookController {

	@Autowired
	private BookService bookService;
	
	
	@RequestMapping(method=RequestMethod.GET,value="/books")
	public ArrayList<Book> AllBooks()
	{
		return bookService.getAllBooks();
	}
	@RequestMapping(method=RequestMethod.GET,value="/{authorID}")
	public ArrayList<Book> getBooksByAuthorID(@PathVariable int authorID)
	{
		return bookService.getBooksByAuthorID(authorID);
	}
	@RequestMapping(method=RequestMethod.GET,value="/b{bookID}")
	public Book getBookByID(@PathVariable int bookID)
	{
		return bookService.getBookByID(bookID);
	}
	@RequestMapping(method=RequestMethod.POST,value="/{authorID}/")
	public void insertBook(@RequestBody Book book, @PathVariable int authorID)
	{
		Author a=new Author();
		a.setAuthorID(authorID);//setujem samo id autora ...
		book.setAuthor(a);//...koji se prenosi kao strani kljuc u tabeli books,i tako se referencira ceo autor
		bookService.insertBook(book);//... za novu knjigu koja se unosi.
	}
	@RequestMapping(method=RequestMethod.PUT,value="/{authorID}/{bookID}")
	public void updateBook(@RequestBody Book book, @PathVariable int authorID, @PathVariable int bookID)
	{
		Author a=new Author();
		a.setAuthorID(authorID);
		book.setAuthor(a);
		book.setBookID(bookID);
		bookService.updateBook(book);
		
	}
	//@RequestMapping(method=RequestMethod.DELETE,value="/{authorID}/{bookID}")
	@RequestMapping(method=RequestMethod.DELETE,value="/{bookID}")
	public void deleteBookByID(@PathVariable int bookID)
	{
		/*Author a=new Author();
		a.setAuthorID(authorID);
		Book book=new Book();
		book.setBookID(bookID);
		book.setAuthor(a);*/
		bookService.deleteBookByID(bookID);
	}
}
