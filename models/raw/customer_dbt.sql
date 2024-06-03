SELECT * 
FROM {{ source('Boomi', 'customer_dbt') }} 