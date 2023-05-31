--CREATE VIEW Compras_POWERBI AS 
SELECT
a.PurchaseOrderID as OrderID,
b.OrderDate as FechaOrden,
b.ShipDate as FechaEnvio,
a.DueDate as FechaVencimiento,
a.ProductID,
d.Name as Descripcion,
a.OrderQty as CantidadPedida,
a.ReceivedQty as CantidadRecibida, 
a.RejectedQty as CantidadDevuelta,
a.UnitPrice as PrecioUnitaria,
a.LineTotal as MontoTotal, 
b.VendorID as ProveedorID,
e.Name as Proveedor,
c.AverageLeadTime
FROM Purchasing.PurchaseOrderDetail a 
join Purchasing.PurchaseOrderHeader b on a.PurchaseOrderID=b.PurchaseOrderID
join Purchasing.ProductVendor c on a.ProductID=c.ProductID
join Production.Product d on c.ProductID=d.ProductID
join Purchasing.Vendor e on b.VendorID=e.BusinessEntityID