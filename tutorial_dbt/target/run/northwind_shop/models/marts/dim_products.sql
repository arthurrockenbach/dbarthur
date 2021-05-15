

  create or replace table `northwind1-313400`.`dbt_arthur`.`dim_products`
  
  
  OPTIONS()
  as (
    with
    selected as (
        select 
            /* Primary key */
               product_id

            /*Foreign key */
            , category_id
            , supplier_id

            , units_in_stock           	
            , unit_price	
            , product_name	
            , quantity_per_unit	
            	
            , reorder_level	
            , units_on_order	
            , is_discontinued

        from `northwind1-313400`.`dbt_arthur`.`stg_products`
    )
    , transformed as (
        select 
        row_number() over (order by product_id) as product_sk
        , *
        from selected
    )

select * from transformed
  );
    