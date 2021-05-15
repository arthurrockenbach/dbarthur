
    
    



select count(*) as validation_errors
from (

    select
        shipper_sk

    from `northwind1-313400`.`dbt_arthur`.`dim_shippers`
    where shipper_sk is not null
    group by shipper_sk
    having count(*) > 1

) validation_errors


