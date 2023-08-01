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

Доп.задача
создать схему БД для "онлайн-игры: шахматы" с помощью инструмента онлайн-проектирования

  Таблица "players":
player_id (первичный ключ) - уникальный идентификатор игрока
creation_date - дата и время создания профиля игрока
pseudonym - псевдоним (никнейм) игрока
is_blocked - статус блокировки 
  
  Таблица "matches" (партии):
match_id (первичный ключ) - уникальный идентификатор игры
player1_id (внешний ключ к players) - идентификатор первого игрока в игре
player2_id (внешний ключ к players) - идентификатор второго игрока в игре
start_time - дата и время начала игры
end_time - дата и время окончания игры 
winner_id (внешний ключ к players) - идентификатор победителя игры 
  
  Таблица "messages":
message_id (первичный ключ) - уникальный идентификатор сообщения
sender_id (внешний ключ к players) - идентификатор отправителя сообщения
receiver_id (внешний ключ к players) - идентификатор получателя сообщения
message_text - текст сообщения
send_time - дата и время отправки сообщения

  Таблица "chats":
chat_id (первичный ключ) - уникальный идентификатор чата
player1_id (внешний ключ к players) - идентификатор первого игрока в чате
player2_id (внешний ключ к players) - идентификатор второго игрока в чате

  Таблица "maps":
map_id (первичный ключ) - уникальный идентификатор карты (игрового поля)
map_name - название карты
map_data - данные карты (например фон, тема)

![Image alt](https://github.com/sainozhenko/BD_HW/main/https://github.com/Sainozhenko/BD_HW/blob/main/image.png)
