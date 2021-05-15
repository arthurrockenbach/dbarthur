
    
    



select count(*) as validation_errors
from (

    select
        order_id

    from `northwind1-313400`.`northwind_etl`.`orders`
    where order_id is not null
    group by order_id
    having count(*) > 1

) validation_errors


