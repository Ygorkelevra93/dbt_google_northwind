
with products as (
    select
    cast(product_id as string)           as product_id,
    cast(product_name as string)        as product_name,
    cast(supplier_id as string)          as supplier_id,
    cast(category_id as string)          as category_id,
    cast(quantity_per_unit as string)   as quantity_per_unit,
    cast(unit_price as float64)         as unit_price,
    cast(units_in_stock as int64)       as units_in_stock,
    cast(units_on_order as int64)       as units_on_order,
    cast(reorder_level as int64)        as reorder_level,
    cast(reorder_level as boolean )     as discontinued
    from {{ source('raw_northwind', 'products') }}
) 


select 
product_id
,product_name
,supplier_id
,category_id
,quantity_per_unit
,unit_price
,units_in_stock
,units_on_order
,reorder_level
,discontinued

from products