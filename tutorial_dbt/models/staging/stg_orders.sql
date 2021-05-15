
with
    source as (
        select 
          /*Primary key*/ 
            order_id
          /*Foreign Key*/
            ,employee_id
            ,customer_id
            ,ship_region	
            ,shipped_date
            ,ship_country	
            ,ship_name
            ,order_date		
            ,ship_postal_code	
            ,ship_city	
            ,freight	
            ,ship_via as shipper_id
            ,required_date
            ,ship_address
            /*Stitch Columns*/	
            ,_sdc_batched_at		
            ,_sdc_extracted_at as last_etl_run
            ,_sdc_table_version
            ,_sdc_received_at	
            ,_sdc_sequence

        from {{ source('northwind_etl','orders') }}
    )
select * from source