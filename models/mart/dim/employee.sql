select 
    employee_id as funcionario_id
    ,concat(first_name,' ',last_name) as funcionario_nome
    ,title  as funcionario_cargo
    ,title_of_courtesy as funcionario_cargo_abrev
    ,birth_date as funcionario_nascimento
    ,hire_date as funcionario_data_admissao
    ,city as funcionario_cidade
    ,region as funcionario_regiao
    ,country as funcionario_pais_de_origem
    ,extension as funcionario_    
    ,reports_to as funcionario_reporta_a_quem
   
    from {{ref('stg_employee')}}
