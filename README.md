# Spring-REST
Spring REST API

Ovo je mini projekat RESTfull API koji koristi relacionu bazu mysql koja se sastoji od dve tabele,authors i books.Tabele se u vezi 1:M.
Za object-relation mapiranje koristio  sam java persistance API(JPA) odnosno Hibernate.
Kreirane su CRUD operacije za autore odnosno knjige.
Putanje za CRUD operacije autora su:
GET-localhost:8080/book/books
POST-localhost:8080/book/{autorID}
PUT-localhost:8080/book/{authorID}/{bookID}
DELETE-localhost:8080/book/{authorID}/{bookID}
