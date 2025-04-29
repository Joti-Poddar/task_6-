create database onlinebook_store

use onlinebook_store


select * from Orders
select * from Customers
select * from Books

1)--- Retrieve all books in the "Fiction" genre:

select * from Books
where Genre = 'Fiction'

-- 2) Find books published after the year 1950:

select * from Books
where Published_Year>1950

-- 3) List all customers from the Canada:

select * from Customers
where Country = 'Canada' 

-- 4) Show orders placed in November 2023:

select * from Orders
where Order_Date between '2023-11-01' and '2023-11-30'

-- 5) Retrieve the total stock of books available:


alter table books
alter column stock int

select sum(stock) as total_stock
from Books


-- 6) Find the details of the most expensive book:

select * from Books
order by price desc

-- 7) Show all customers who ordered more than 1 quantity of a book:

select * from Orders
where Quantity>1

-- 9) List all genres available in the Books table:

select distinct(genre) from Books

---Find the book with the lowest stock:
select * from Books

select * from books
where stock = (SELECT min(stock) from books)


---Find the book with the 2nd lowest stock:

select * from books
where stock = ( select min(stock)from books
				where stock>( select min(stock) from books))

-- 11) Calculate the total revenue generated from all orders:

select sum(Total_amount) as Revenue 
from orders



--12 -- 1) Retrieve the total number of books sold for each genre:

select b.Genre, sum(o.Quantity) as total_book_sold
from orders o
join Books b on o.Book_id = b.Book_id
group by b.Genre

SELECT * FROM ORDERS;

----13) Find the average price of books in the "Fantasy" genre:
alter table books
alter column price int

select AVG(price) as average_price
from books
where genre = 'Fantasy'





