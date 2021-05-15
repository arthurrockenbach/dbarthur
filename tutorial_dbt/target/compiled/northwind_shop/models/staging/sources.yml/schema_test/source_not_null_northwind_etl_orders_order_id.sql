
    
    



select count(*) as validation_errors
from `northwind1-313400`.`northwind_etl`.`orders`
where order_id is null


