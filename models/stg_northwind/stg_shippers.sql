with  shippers as  (
    select
    cast (shipper_id as string)     as shipper_id 
    ,cast (company_name as string)  as company_name
    ,cast (phone as string)         as phone
    from {{source('raw_northwind','shippers')}}
    )
select 
    shipper_id
    ,company_name
    ,phone
    from shippers