select * from Production.Product;


SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '_a%';
-- Answer --> Select Products Name which second character is 'a' whatever what comes next


SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE 'a%h';
-- Answer --> Select Products Name which starting with 'a' and ending with 'h'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '%a_';
-- Answer --> Select Products Name which the character before the last one is 'a' and should contain exactly one character at the end

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE 'ahm%';
-- Answer --> Select Products Name whose first name starting with 'ahm'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '[ahm]%';
-- Answer --> Select Products Name which starting with 'a' or 'h' or 'm'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '[^ahm]%';
-- Answer --> Select Products Name which starting with any character except 'a' and 'h' and 'm'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '[a-h]%';
-- Answer --> Query to select product names that start with a character in the range from 'a' to 'h'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '[^a-h]%';
-- Answer --> Query to select product names that don't start with a character in the range from 'a' to 'h'

SELECT * 
FROM Production .Product
WHERE Production.Product.Name LIKE '%[%]';
-- Answer --> Query to select product name that contains %
-- Another Answer after searching --> query will not work as intended because the % character is a wildcard in the LIKE pattern

-- this one is recommended if I want to retrive all name contains %
SELECT * 
FROM Production .Product 
WHERE Production.Product.Name LIKE '%\%%' ESCAPE '\';


-- About Coalesce it retrieves all non null values passed in coalesec parameter if not returns a string you pass it
SELECT COALESCE(Production.Product.ProductID, Production.Product.Name
			   ,Production.Product.ProductNumber, '666') as TableNumber 
FROM Production.Product;


