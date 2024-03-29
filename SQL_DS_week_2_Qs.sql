-- 1. Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT TrackId, Name, Milliseconds
FROM Tracks
WHERE Milliseconds >= 5000000

------------------------------------------------------------------------------------

-- 2. Find all the invoices whose total is between $5 and $15 dollars.

SELECT InvoiceID, Total
FROM Invoices
WHERE Total BETWEEN 5 AND 15

------------------------------------------------------------------------------------

-- 3. Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT CustomerId, FirstName, LastName, Company, State
FROM Customers
WHERE State IN ("RJ","DF","AB","BC",'CA','WA','NY')

------------------------------------------------------------------------------------

-- 4. Find all the invoices for customer 56 and 58 where the total was between 
-- $1.00 and $5.00.

SELECT CustomerId, InvoiceId, InvoiceDate, Total
FROM Invoices
WHERE CustomerID IN (56,58)
AND Total BETWEEN 1 AND 5

------------------------------------------------------------------------------------

-- 5. Find all the tracks whose name starts with 'All'.

SELECT TrackId, Name
FROM Tracks
WHERE Name LIKE "All%"

------------------------------------------------------------------------------------

-- 6. Find all the customer emails that start with "J" and are from gmail.com.

SELECT CustomerId, FirstName, LastName, Email
FROM Customers
WHERE Email LIKE "J%@gmail.com"

------------------------------------------------------------------------------------

-- 7. Find all the invoices from Brasilia, Edmonton, and Vancouver and sort in 
-- descending order by invoice ID.

SELECT InvoiceId, BillingCity, Total
FROM Invoices
WHERE BillingCity IN ('Brasilia','Edmonton','Vancouver')
ORDER BY InvoiceId DESC;

------------------------------------------------------------------------------------

-- 8. Show the number of orders placed by each customer and sort the result by
-- the number of orders in descending order.

SELECT CustomerId, 
COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC;

------------------------------------------------------------------------------------

-- 9. Find the albums with 12 or more tracks.

SELECT AlbumId, Title, Count(*) AS Total_tracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12