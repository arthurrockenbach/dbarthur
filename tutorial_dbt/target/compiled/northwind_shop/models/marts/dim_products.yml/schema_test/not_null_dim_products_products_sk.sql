
    
    



select count(*) as validation_errors
from `northwind1-313400`.`dbt_arthur`.`dim_products`
where products_sk is null


