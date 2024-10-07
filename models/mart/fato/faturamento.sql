with faturamento as (
    select
    order_id
    ,customer_id
    ,employee_id
    ,order_date
    ,required_date
    ,shipped_date
    ,ship_via
    ,freight
    ,ship_name
    ,ship_address
    ,ship_city
    ,ship_region
    ,ship_postal_code
    ,ship_country
    from {{ref('stg__orders_')}}
),

detalhe_venda as (
    select
    order_id
    ,product_id
    ,unit_price
    ,quantity
    ,discount
    from {{ref('stg_order_details')}}

),

custo_produto as (
    select 
    product_id
    ,product_name
    ,supplier_id
    ,category_id
    ,quantity_per_unit
    ,unit_price
    ,units_in_stock
    ,units_on_order
    ,reorder_level
    ,discontinued

from {{ref('stg_products')}}

)


select 
    faturamento.*
    ,detalhe_venda.product_id
    ,detalhe_venda.unit_price
    ,detalhe_venda.quantity
    ,detalhe_venda.discount
    ,custo_produto.product_name
    ,(detalhe_venda.unit_price * detalhe_venda.quantity) * (1-detalhe_venda.discount) as total_venda
    ,(custo_produto.unit_price * detalhe_venda.quantity) as custo_venda
    ,((detalhe_venda.unit_price * detalhe_venda.quantity) * (1-detalhe_venda.discount)) 
        - (custo_produto.unit_price * detalhe_venda.quantity) as margem_venda

    from faturamento 
    left join detalhe_venda on detalhe_venda.order_id = faturamento.order_id 
    left join custo_produto on custo_produto.product_id = detalhe_venda.product_id
