with  employee_territories as (
    select
    cast (employee_id as string)    as employee_id
    ,cast (territory_id as string)  as territory_id
    from {{source('raw_northwind','employee_territories')}}
    )


select 
    employee_id
    ,territory_id
  from employee_territories