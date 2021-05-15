
with dbt__CTE__INTERNAL_test as (
with 
    validation as (
        select sum(quantity) as sum_val
        from `northwind1-313400`.`dbt_arthur`.`fact_order_details`
        where order_date between '1998-03-01' and '1998-03-31'
    )
select * from validation where sum_val != 4065
)select count(*) from dbt__CTE__INTERNAL_test