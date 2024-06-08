create database lms;

use lms;

CREATE TABLE `lms`.`books` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `pages` INT NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

INSERT INTO books (id, name, author, date, pages, category)
VALUES 
    (1, 'Book 1', 'Author 1', STR_TO_DATE('10-10-2001', '%d-%m-%Y'), 200, 'Fiction'),
    (2, 'Book 2', 'Author 2', STR_TO_DATE('15-12-1999', '%d-%m-%Y'), 150, 'Non-Fiction'),
    (3, 'Book 3', 'Author 3', STR_TO_DATE('20-05-2005', '%d-%m-%Y'), 180, 'Fantasy'),
    (4, 'Book 4', 'Author 4', STR_TO_DATE('12-08-2012', '%d-%m-%Y'), 220, 'Mystery'),
    (5, 'Book 5', 'Author 5', STR_TO_DATE('05-03-2007', '%d-%m-%Y'), 170, 'Thriller'),
    (6, 'Book 6', 'Author 6', STR_TO_DATE('30-11-1995', '%d-%m-%Y'), 190, 'Historical Fiction'),
    (7, 'Book 7', 'Author 7', STR_TO_DATE('08-09-2003', '%d-%m-%Y'), 210, 'Adventure'),
    (8, 'Book 8', 'Author 8', STR_TO_DATE('17-06-2010', '%d-%m-%Y'), 160, 'Romance'),
    (9, 'Book 9', 'Author 9', STR_TO_DATE('22-04-2009', '%d-%m-%Y'), 230, 'Science'),
    (10, 'Book 10', 'Author 10', STR_TO_DATE('19-02-2015', '%d-%m-%Y'), 180, 'Biography'),
    (11, 'Book 11', 'Author 11', STR_TO_DATE('14-07-2000', '%d-%m-%Y'), 200, 'Self-Help'),
    (12, 'Book 12', 'Author 12', STR_TO_DATE('25-10-2018', '%d-%m-%Y'), 250, 'Fantasy'),
    (13, 'Book 13', 'Author 13', STR_TO_DATE('03-12-1998', '%d-%m-%Y'), 170, 'Science Fiction'),
    (14, 'Book 14', 'Author 14', STR_TO_DATE('28-06-2006', '%d-%m-%Y'), 190, 'Drama'),
    (15, 'Book 15', 'Author 15', STR_TO_DATE('09-11-2011', '%d-%m-%Y'), 210, 'Mystery'),
    (16, 'Book 16', 'Author 16', STR_TO_DATE('06-08-2004', '%d-%m-%Y'), 220, 'Thriller'),
    (17, 'Book 17', 'Author 17', STR_TO_DATE('15-05-1996', '%d-%m-%Y'), 180, 'Historical Fiction'),
    (18, 'Book 18', 'Author 18', STR_TO_DATE('10-09-2002', '%d-%m-%Y'), 190, 'Adventure'),
    (19, 'Book 19', 'Author 19', STR_TO_DATE('19-04-2013', '%d-%m-%Y'), 200, 'Romance'),
    (20, 'Book 20', 'Author 20', STR_TO_DATE('27-02-2008', '%d-%m-%Y'), 170, 'Science'),
    (21, 'Book 21', 'Author 21', STR_TO_DATE('14-07-2016', '%d-%m-%Y'), 180, 'Biography'),
    (22, 'Book 22', 'Author 22', STR_TO_DATE('23-11-2005', '%d-%m-%Y'), 210, 'Self-Help'),
    (23, 'Book 23', 'Author 23', STR_TO_DATE('11-12-2014', '%d-%m-%Y'), 220, 'Fantasy'),
    (24, 'Book 24', 'Author 24', STR_TO_DATE('09-08-2001', '%d-%m-%Y'), 230, 'Science Fiction'),
    (25, 'Book 25', 'Author 25', STR_TO_DATE('22-06-2010', '%d-%m-%Y'), 240, 'Drama');





select * from books;

alter user 'root'@'localhost' identified with mysql_native_password by 'sathyan123';

drop table Books;

alter user 'root'@'localhost' identified with mysql_native_password by 'sathyan123';