with
    source as (
        select 
           /*primary key*/
            order_id
            ,product_id		
            , 
               case
                  when discount = 1 then True
                  else False
               end as is_discountinued	
            ,unit_price	
            ,quantity	
            /*Stitch Columns*/	
            ,_sdc_batched_at		
            ,_sdc_extracted_at as last_etl_run
            ,_sdc_table_version
            ,_sdc_received_at	
            ,_sdc_sequence

        from {{ source('northwind_etl','order_details') }}
)
select * from source 