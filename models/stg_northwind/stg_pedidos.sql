{{
    config (
        materialized = 'incremental'
    )
}}

SELECT * 
FROM {{ source('raw_northwind', 'pedidos') }}

{% if is_incremental() %}
  WHERE data_modificacao >= COALESCE(
    (SELECT MAX(data_modificacao) FROM {{ this }}), '1900-01-01'
  )
{% endif %}
