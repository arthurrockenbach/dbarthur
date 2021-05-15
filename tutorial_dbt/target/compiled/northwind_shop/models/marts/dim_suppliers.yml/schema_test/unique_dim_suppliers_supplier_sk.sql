
    
    



select count(*) as validation_errors
from (

    select
        supplier_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_suppliers`
    where supplier_sk is not null
    group by supplier_sk
    having count(*) > 1

) validation_errors


