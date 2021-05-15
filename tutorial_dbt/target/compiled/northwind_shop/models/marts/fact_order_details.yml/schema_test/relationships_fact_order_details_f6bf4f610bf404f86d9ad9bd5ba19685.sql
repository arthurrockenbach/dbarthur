
    
    




select count(*) as validation_errors
from (
    select customer_fk as id from `northwind1-313400`.`dbt_arthur`.`fact_order_details`
) as child
left join (
    select customer_sk as id from `northwind1-313400`.`dbt_arthur`.`dim_customers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null


