

  create or replace table `northwind1-313400`.`dbt_arthur`.`dim_suppliers`
  
  
  OPTIONS()
  as (
    with
    suppliers as (
        select 
          /*primary key*/
            supplier_id
            ,country
            ,city	
            ,fax	
            ,postal_code
            ,homepage
            ,address	
            ,region	

        from `northwind1-313400`.`dbt_arthur`.`stg_suppliers`
    )
    , divisions as ( 
        select *
        from `northwind1-313400`.`dbt_arthur`.`seed2`
    )
    , transformed as (
        select 
        row_number() over (order by supplier_id) as supplier_sk
        , suppliers.supplier_id
            ,suppliers.country
            ,suppliers.city	
            ,suppliers.fax	
            ,suppliers.postal_code
            ,suppliers.homepage
            ,suppliers.address	
            ,suppliers.region
            ,divisions.division
        from suppliers
        left join divisions on suppliers.country = divisions.country
    )

select * from transformed
  );
    