select CustomerDetails.CustomerID, CustomerDetails.FullName,
Orders.OrderID, Orders.TotalCost,
Menus.MenuName,
MenuItems.CourseName
from CustomerDetails
inner join Orders on CustomerDetails.CustomerID = Orders.fk_Orders_Customers
inner join Menus on Orders.MenuID = Menus.MenuID
inner join MenuItems on Menus.MenuItemID = MenuItems.MenuItemID
where Orders.TotalCost > 150
order by Orders.TotalCost asc;