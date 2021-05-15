
    
    



select count(*) as validation_errors
from (

    select
        customer_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_customers`
    where customer_sk is not null
    group by customer_sk
    having count(*) > 1

) validation_errors


