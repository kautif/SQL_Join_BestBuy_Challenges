/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 
 /*
 SELECT Products.Name 
 FROM Products
 LEFT JOIN Categories ON Products.CategoryId = Categories.CategoryID
 WHERE Categories.CategoryID = 1;
*/
 
 /* joins: find all product names, product prices, and products ratings that have a rating of 5 */
/*
SELECT Products.ProductID, Products.Name, Products.Price
FROM Products
LEFT JOIN Reviews ON Products.ProductID = Reviews.ProductID
WHERE Reviews.Rating = 5; */
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
/* SELECT SUM(Quantity), EmployeeID
FROM Sales
GROUP BY EmployeeID
ORDER BY SUM(Quantity) DESC */

/* SELECT Employees.FirstName, Employees.LastName, SUM(Sales.Quantity) as TotalQuantity
FROM Employees
INNER JOIN Sales ON Employees.EmployeeID = Sales.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY TotalQuantity DESC */


/* joins: find the name of the department, and the name of the category for Appliances and Games */
/* SELECT Departments.Name, Categories.Name
FROM Departments
INNER JOIN Categories ON Departments.DepartmentID = Categories.DepartmentID
WHERE Categories.Name = 'Appliances' OR Categories.Name = 'Games' */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
/* SELECT Name, SUM(Sales.Quantity) as TotalQuantity, SUM(Sales.PricePerUnit) as TotalSold
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID
WHERE Products.Name = 'Eagles: Hotel California' */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
/* SELECT Products.Name, Reviews.Reviewer, Reviews.Rating, Reviews.Comment
FROM Products
INNER JOIN Reviews ON Products.ProductID = Reviews.ProductID
WHERE Reviews.Rating = 1 AND Products.Name LIKE '%Visio%' */