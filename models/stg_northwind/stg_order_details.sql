with order_details as  (
    select
    cast ( order_id as string)      as order_id
    ,cast( product_id as string)    as product_id
    ,cast( unit_price as float64)   as unit_price
    ,cast( quantity as int64)       as quantity
    ,cast( discount as float64)     as discount
    from {{source('raw_northwind','order_details')}}
  )
 select
    order_id
    ,product_id
    ,unit_price
    ,quantity
    ,discount
    from order_details