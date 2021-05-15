
    
    



select count(*) as validation_errors
from `northwind1-313400`.`dbt_arthur`.`dim_suppliers`
where supplier_sk is null


