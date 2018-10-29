package com.StefanApp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StefanApp.model.Author;
import com.StefanApp.model.AuthorRepository;

@Service
public class AuthorService {

	@Autowired
	private AuthorRepository authorRepo;
	
	public ArrayList<Author> getAuthors()
	{
		ArrayList<Author> list=new ArrayList<>();
		authorRepo.findAll().forEach(list::add);
		return list;
	}
	public Author getAuthorByID(int id)
	{
		return authorRepo.findById(id).get();
	}
	public void deleteAuthorByID(int id)
	{
		authorRepo.deleteById(id);
	}
	public void insertAuthor(Author author)
	{
		authorRepo.save(author);
	}
	public void updateAuthorByID(Author author)
	{
		authorRepo.save(author);
	}
}
