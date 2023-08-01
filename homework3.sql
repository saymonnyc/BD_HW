1.Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil
SELECT COUNT(*) as OrdersToBrazil
FROM Orders
Join Customers ON Orders.CustomerID=Customers.CustomerID
Join Shippers ON Orders.ShipperID=Shippers.ShipperID
WHERE ShipperName='Speedy Express' AND Customers.Country='Brazil'

2.Вывести среднюю стоимость проданного в Germany товара
SELECT AVG(Price)
FROM [Products]
Join Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.Country='Germany'

3.Вывести ко-во и сред/стоимость товаров из USA
SELECT COUNT(*) as Quantity, SUM(Price) as Sum
FROM [Products]
Join Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.Country='USA'

4.Вывести стоимость и название двух самых дешевых товаров из Germany
SELECT ProductName, Price
FROM [Products]
Join Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE Suppliers.Country='Germany'
Order By Price ASC
LIMIT 2

5.Применить наценку в 15% ко всем товарам из категории 4
SELECT Price*1.15 as NewPrice,*
FROM [Products]
Join Categories ON Categories.CategoryID=Products.CategoryID
WHERE Categories.CategoryID=4
