with employees as  (
    select
    cast (employee_id as string)        as employee_id
    ,cast (last_name as string)         as last_name
    ,cast (first_name as string)        as first_name
    ,cast (title as string)             as title
    ,cast (title_of_courtesy as string) as title_of_courtesy
    ,cast (birth_date as timestamp)     as birth_date
    ,cast (hire_date as timestamp)      as hire_date
    ,cast (address as string)           as address
    ,cast (city as string)              as city
    ,cast (region as string)            as region
    ,cast (postal_code as string)       as postal_code
    ,cast (country as string)           as country
    ,cast (home_phone as string)        as home_phone
    ,cast (extension as string)         as extension
    ,cast (reports_to as string)        as reports_to
    from {{source('raw_northwind','employees')}}
  )


select 
    employee_id
    ,last_name
    ,first_name
    ,title
    ,title_of_courtesy
    ,birth_date
    ,hire_date
    ,address
    ,city
    ,region
    ,postal_code
    ,country
    ,home_phone
    ,extension
    ,reports_to
   
    from employees
