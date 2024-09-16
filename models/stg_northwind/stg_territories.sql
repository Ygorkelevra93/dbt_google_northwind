with territories as  (
    select
    cast (territory_id as string)          as territory_id
    ,cast(territory_description as string) as territory_description
    ,cast(region_id as string)             as  region_id
    from {{source('raw_northwind','territories')}}
    )


select
    territory_id
    ,territory_description
    , region_id
    from territories