with  suppliers as  (
    select
    cast (supplier_id as string)    as supplier_id
    ,cast (company_name as string)  as company_name
    ,cast (contact_name as string)  as contact_name
    ,cast (contact_title as string) as contact_title
    ,cast (address as string)       as address
    ,cast (city as string)          as city
    ,cast (region as string)        as region
    ,cast (postal_code as string)   as postal_code
    ,cast (country as string)       as country
   
    from {{source('raw_northwind','suppliers')}}
  )


 select
    supplier_id
    ,company_name
    ,contact_name
    ,contact_title
    ,address
    ,city
    ,region
    ,postal_code
    ,country
    
    from suppliers