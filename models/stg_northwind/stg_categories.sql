with categories as (   
    select 
      cast(category_id as int64)    as category_id 
    , cast(category_name as string) as category_name
    , cast(description as string)   as description
    from {{ source('raw_northwind', 'categories') }}
)

select
category_id
, category_name
from categories