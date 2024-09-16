with _orders_ as  (
    select
     cast(order_id as string)           as  order_id
    ,cast(customer_id as string)        as  customer_id
    ,cast(employee_id as string)        as  employee_id
    ,cast(order_date as timestamp)      as  order_date
    ,cast(required_date as timestamp)   as  required_date
    ,cast(shipped_date as timestamp)    as  shipped_date
    ,cast(ship_via as string)           as  ship_via
    ,cast(freight as float64)           as  freight
    ,cast(ship_name as string)          as  ship_name
    ,cast(ship_address as string)       as  ship_address
    ,cast(ship_city as string)          as  ship_city
    ,cast(ship_region as string)        as  ship_region
    ,cast(ship_postal_code as string)   as  ship_postal_code
    ,cast(ship_country as string)       as  ship_country
    from {{source('raw_northwind','_orders_')}}
  )
select
    order_id
    ,customer_id
    ,employee_id
    ,order_date
    ,required_date
    ,shipped_date
    ,ship_via
    ,freight
    ,ship_name
    ,ship_address
    ,ship_city
    ,ship_region
    ,ship_postal_code
    ,ship_country
    from _orders_