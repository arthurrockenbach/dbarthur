
    
    



select count(*) as validation_errors
from `northwind1-313400`.`dbt_arthur`.`dim_shippers`
where shipper_sk is null


