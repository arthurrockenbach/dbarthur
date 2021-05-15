
    
    



select count(*) as validation_errors
from (

    select
        products_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_products`
    where products_sk is not null
    group by products_sk
    having count(*) > 1

) validation_errors


