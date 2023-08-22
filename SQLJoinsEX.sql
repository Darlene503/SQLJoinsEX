/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT p.name as "Product", c.Name as "Category" from Products as P
INNER JOIN categories as c
ON p.CategoryID = c.CategoryID
WHERE c.Name = "Computers";

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.NAME, p.Price, r.Rating from Products as p
INNER JOIN reviews AS r 
ON p.ProductID = r.ProductID
WHERE r.rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, sum(Quantity) AS "Total Sold" FROM Employees as e
INNER JOIN Sales AS s
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY sum(Quantity);

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.NAME AS "Department", c.NAME AS "Category" FROM Categories AS c
INNER JOIN DepartmentS AS d 
ON d.DepartmentID = c.DepartmentID
WHERE c.NAME = "Appliances" OR c.NAME = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.NAME, SUM(s.Quantity) AS "Total Sold", SUM(s.Quantity * p.Price) AS "Total Price" FROM Products AS p
 INNER JOIN Sales AS s 
 ON p.ProductID = s.ProductID
 WHERE p.NAME LIKE "%hotel%";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.NAME, r.Reviewer, r.Comment from Products as p
INNER JOIN Reviews as r 
ON p.ProductID = r.ProductID
WHERE p.NAME = "Visio TV";

