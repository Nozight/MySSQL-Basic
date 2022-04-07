-- Parte 1
SELECT f.FacturaID, FechaFactura, correos.Compania "Empresa de Correo", clientes.Compania "Nombre del Cliente", CategoriaNombre, ProductoNombre, fd.PrecioUnitario, Cantidad
FROM facturas f join facturadetalle fd on fd.FacturaID = f.FacturaID
join clientes on f.ClienteID = clientes.ClienteID
join correos on correos.CorreoID = f.EnvioVia
join  productos p  on fd.ProductoID = p.ProductoID
join categorias on p.CategoriaID = categorias.CategoriaID;
-- Parte 2
-- 1. 
select CategoriaNombre, ProductoNombre from categorias 
left join productos on categorias.CategoriaID = productos.CategoriaID;
-- 2.
select Compania Cliente, FacturaID from clientes 
left join facturas on clientes.ClienteID = facturas.ClienteID
where isnull(FacturaID);
-- 3.
