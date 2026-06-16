prepare GetOrderDetail from
'select OrderID, Quantity, TotalCost
from Orders
where fk_Orders_Customers = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;