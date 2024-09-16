with region as (
    select
    cast(region_id as string)              as region_id
    ,cast(region_description as string)    as region_description
    from {{source('raw_northwind','region')}})



select 
    region_id
    ,region_description
  from region