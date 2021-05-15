
    
    



select count(*) as validation_errors
from `northwind1-313400`.`dbt_arthur`.`dim_customers`
where customer_sk is null


