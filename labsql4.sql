SELECT CategoryName, ProductName, UnitPrice
FROM Categories , Products
WHERE Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName

SELECT CategoryName, ProductName, UnitPrice
FROM Products join Categories
on Products.CategoryID = Categories.CategoryID

SELECT CategoryName, ProductName, UnitPrice
FROM Products as p,Categories as c
where p.CategoryID = c.CategoryID 

SELECT CompanyName,OrderID
from orders, shippers
WHERE shippers.ShipperID = orders.ShipVia

SELECT CompanyName,OrderID
from orders JOIN shippers
on shippers.ShipperID = orders.ShipVia

SELECT ProductID, ProductName, CompanyName,Country 
from Products p, Suppliers s
WHERE p.SupplierID = s.SupplierID

SELECT ProductID, ProductName, CompanyName,Country 
from Products p JOIN Suppliers s
on p.SupplierID = s.SupplierID

SELECT CompanyName,OrderID
FROM Orders ,Shippers
where Shippers.ShipperID = Orders.ShipVia
and OrderID = 10275

--ต้องการรหัสพนักงาน ชื่อพนักงาน รหัสใบสั่งซื้อที่เกี่ยวข้อง เรียงตามลำดับรหัสพนักงาน

SELECT e.EmployeeID,FirstName,OrderID
FROM Employees e,Orders o
WHERE e.EmployeeID = o.EmployeeID
ORDER BY e.EmployeeID

--ต้องการรหัสสินค้า เมือง และประเทศของบริษัทของผู้จำหน่าย

SELECT ProductID,City,Country
FROM Products p,Suppliers s
WHERE p.SupplierID = s.SupplierID

--ต้องการชื่อบริษัทขนส่ง และจำนวนใบสั่งซื้อที่เกียวข้อง

SELECT CompanyName , COUNT(*) จำนวนใบสั่งซื้อที่เกียวข้อง
FROM Orders o,Shippers s
WHERE o.ShipVia = s.ShipperID
GROUP BY CompanyName

--ต้องการรหัสสินค้า ชื่อสินค้า และจำนวนทั้งหมดที่ขายได้
SELECT p.ProductID,p.ProductName,sum(Quantity) as จำนวนทั้งหมดที่ขายได้
from Products p JOIN [Order Details] od 
on p.ProductID = od.ProductID
GROUP BY p.ProductID,p.ProductName
ORDER BY 1
