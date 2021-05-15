
    
    



select count(*) as validation_errors
from `northwind1-313400`.`dbt_arthur`.`fact_order_details`
where order_id is null


