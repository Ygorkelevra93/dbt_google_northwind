with  customers as  (
    select
     customer_id
    ,company_name
    ,contact_name
    ,contact_title
    ,address
    ,city
    ,region
    ,postal_code
    ,country
    ,phone
    ,fax
    from {{source('raw_northwind','customers')}}
  )

select
    customer_id
    ,company_name
    ,contact_name
    ,contact_title
    ,address
    ,city
    ,region
    ,postal_code
    ,country
    ,phone
    ,fax
from customers