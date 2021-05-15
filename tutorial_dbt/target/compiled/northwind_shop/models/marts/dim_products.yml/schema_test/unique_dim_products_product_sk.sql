
    
    



select count(*) as validation_errors
from (

    select
        product_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_products`
    where product_sk is not null
    group by product_sk
    having count(*) > 1

) validation_errors


