CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Create the book table
CREATE TABLE Books (
    book_id INT auto_increment PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    published_year YEAR,
    is_available BOOLEAN DEFAULT TRUE
);

-- Create the members table
CREATE TABLE Members (
    member_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NULL NULL,
    email VARCHAR(255),
    phone_number VARCHAR(15),
    join_date DATE DEFAULT (CURRENT_DATE)
);

-- Create the librarians table
CREATE TABLE Librarians (
    librarian_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(15),
    hire_date DATE DEFAULT (CURRENT_DATE)
);

ALTER TABLE Books
MODIFY COLUMN published_year SMALLINT;

-- Create the borrowing table
CREATE TABLE Borrowing (
    loan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE DEFAULT (CURRENT_DATE),
    return_date DATE,
    librarian_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (librarian_id) REFERENCES Librarians(librarian_id)
);

-- Insert book records into the Books table
-- had to alter the data type for published_year
INSERT INTO Books (title, author, genre, published_year)
VALUES
("The Hobbit", "J.R.R. Tolkien", "Fantasy", 1937),
("Pride and Prejudice", "Jane Austen", "Romance", 1813),
("1984", "George Orwell", "Dystopian", 1949),
("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960),
("The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 1925),
("The Hunger Games", "Suzanne Collins", "Dystopian", 2008),
("The Lightning Thief", "Rick Riordan", "Fantasy", 2005),
("The Fault in Our Stars", "John Green", "Romance", 2012),
("The Martian", "Andy Weir", "Science Fiction", 2011),
("Gone Girl", "Gillian Flynn", "Mystery", 2012),
("The Book Thief", "Markus Zusak", "Historical Fiction", 2005),
("The Shining", "Stephen King", "Horror", 1977),
("Dune", "Frank Herbert", "Science Fiction", 1965),
("The Da Vinci Code", "Dan Brown", "Mystery", 2003),
("The Silent Patient", "Alex Michaelides", "Thriller", 2019);

-- Insert member records into the Members table
INSERT INTO Members (name,email,phone_number)
VALUES
  ("Raphael Carney","parturient.montes@hotmail.com","455-243-3443"),
  ("Wayne Aguilar","sagittis@outlook.org","382-845-2545"),
  ("Paul Acosta","id.nunc@yahoo.edu","532-946-8647"),
  ("Nash Navarro","in.faucibus@google.org","765-893-5975"),
  ("Cain Rich","blandit@aol.org","264-793-6133"),
  ("Odessa Harris","arcu.aliquam.ultrices@google.org","885-226-5752"),
  ("Chandler Walters","tortor.nibh@hotmail.net","584-424-3886"),
  ("Dai Young","aliquet@protonmail.net","627-623-2547"),
  ("Marvin Porter","egestas.aliquam@yahoo.com","764-223-1552"),
  ("Ross Joyce","lectus.nullam@outlook.com","944-484-7873");

-- Insert librarian records into the Librarians table
INSERT INTO Librarians (name,email,phone_number)
VALUES
  ("Keely Ramos","consectetuer@hotmail.edu","664-689-5949"),
  ("Simone Gardner","phasellus@outlook.net","539-734-7552"),
  ("Charde Maldonado","nisi.cum@protonmail.org","234-635-4365"),
  ("Jerry Sargent","dolor@yahoo.com","374-435-8567"),
  ("Linda Mooney","et@outlook.edu","185-736-3872"),
  ("Grace Schmidt","mollis.lectus.pede@hotmail.net","643-748-6228"),
  ("Jescie Garrison","sed.tortor@outlook.com","286-153-3369"),
  ("Hiram Faulkner","maecenas.malesuada.fringilla@google.net","656-683-6432"),
  ("Mercedes Dotson","ipsum@yahoo.edu","645-267-6348"),
  ("Lacy Wiley","sed@protonmail.net","916-577-2742");
  
