--CREATE VIEW Produccion_POWERBI as 
SELECT 
a.WorkOrderID,
a.StartDate as FechaInicio,
a.EndDate as FechaFin, 
a.DueDate as FechaVencimiento, 
d.LocationID,
d.Name as Location,
a.ProductID,
b.Name as Product,
e.ProductModelID,
e.Name as ProductModel,
a.OrderQty as Cantidad, 
a.StockedQty as Almacenado, 
b.StandardCost as CostoEstandar,
b.ListPrice as PrecioLista
FROM Production.WorkOrder a 
join Production.Product b on a.ProductID=b.ProductID
join Production.WorkOrderRouting c on a.WorkOrderID=c.WorkOrderID
join Production.Location d on c.LocationID=d.LocationID
join Production.ProductModel e on b.ProductModelID=e.ProductModelID
