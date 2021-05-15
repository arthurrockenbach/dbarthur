
    
    



select count(*) as validation_errors
from (

    select
        customers_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_customers`
    where customers_sk is not null
    group by customers_sk
    having count(*) > 1

) validation_errors


