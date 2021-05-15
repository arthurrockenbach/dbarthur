
    
    




select count(*) as validation_errors
from (
    select shipper_fk as id from `northwind1-313400`.`dbt_arthur`.`fact_order_details`
) as child
left join (
    select shipper_sk as id from `northwind1-313400`.`dbt_arthur`.`dim_shippers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


