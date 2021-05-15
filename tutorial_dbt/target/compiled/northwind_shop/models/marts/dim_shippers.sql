with
    selected as (
        select 
           /*primary key*/
            shipper_id
            ,phone	
            ,company_name
	

        from `northwind1-313400`.`dbt_arthur`.`stg_shippers`
    ), transformed as (
       select 
         row_number() over (order by shipper_id) as shipper_sk
         , *
       from selected
    )
select * from transformed