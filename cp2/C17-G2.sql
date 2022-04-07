select * from clientes;
-- PARTE 1
-- Clientes
-- 1.
create view v_clientes as 
select ClienteID, Contacto,
case
when fax = "" then concat("TEL:", Telefono)
else  Fax
end as Fax_o_Telefono
from clientes;
-- 2. parte_1
select ClienteID, Telefono from clientes where Fax = "";
-- parte_2
select * from v_clientes where Fax_o_Telefono like "TEL:%";
-- Proveedores
select * from proveedores;
-- 1.
create view v_proveedores as
Select ProveedorID, Contacto, Compania, concat(Direccion,", ",Ciudad,", ", CodigoPostal,", ", Pais) Direccion from proveedores;
-- 2. parte_1
Select ProveedorID, Compania, Direccion, Pais from proveedores  where Pais = "Brazil" AND Direccion like "%Americanas%";
-- parte_2
SELECT * FROM emarket.v_proveedores;
Select ProveedorID, Compania, Direccion from v_proveedores  where Direccion like "%Americanas%Brazil";
-- PARTE 2
Select ProductoID, ProductoNombre, round(PrecioUnitario) PrecioUnitario, UnidadesStock, UnidadesPedidas, 
case
when UnidadesPedidas = 0 then "BAJA"
when UnidadesPedidas < UnidadesStock then "MEDIA"
when UnidadesPedidas < (UnidadesStock * 2) then "URGENTE"
when UnidadesPedidas > (UnidadesStock * 2) then "SUPER URGENTE"
end as PRIORIDAD
from productos;
