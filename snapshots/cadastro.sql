{% snapshot cadastro_snapshot %}

{{
    config(
      target_schema='snapshots', 
      unique_key='id',           
      strategy='timestamp',      
      updated_at='data_modificacao' )
}}

select * from {{ source('raw_northwind', 'cadastro') }}

{% endsnapshot %}
