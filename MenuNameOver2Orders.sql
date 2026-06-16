select MenuName
from Menus
where MenuID = any (select MenuID from Orders where Quantity > 2);