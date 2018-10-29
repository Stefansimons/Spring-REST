package com.StefanApp.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.StefanApp.model.Author;
import com.StefanApp.service.AuthorService;

@RestController
//@Controller
@RequestMapping("/author")
public class AuthorController {

	@Autowired
	private AuthorService authorService;
	
	@RequestMapping(method=RequestMethod.GET,value="/list")
	public ArrayList<Author> getAuthors()
	{
		return authorService.getAuthors();
	}
	@RequestMapping(method=RequestMethod.GET,value="/{authorID}")
	public Author getAuthorByid(@PathVariable int authorID)
	{
		return authorService.getAuthorByID(authorID);
	}
	@RequestMapping(method=RequestMethod.DELETE,value="/{authorID}")
	public void deleteAuthorByid(@PathVariable int authorID)
	{
		 authorService.deleteAuthorByID(authorID);
	}
	@RequestMapping(method=RequestMethod.POST,value="/")
	public void insertAuthor(@RequestBody Author author)
	{
		 authorService.insertAuthor(author);
	}
	@RequestMapping(method=RequestMethod.PUT,value="/{authorID}")
	public void updateAuthorByID(@RequestBody Author author,@PathVariable int authorID)
	{
		author.setAuthorID(authorID);
		 authorService.insertAuthor(author);
	}
}
