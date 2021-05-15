with
    source as (
        select 
           /*primary key*/
            shipper_id
            ,phone	
            ,company_name
	
            /*Stitch Columns*/	
            ,_sdc_batched_at		
            ,_sdc_extracted_at as last_etl_run
            ,_sdc_table_version
            ,_sdc_received_at	
            ,_sdc_sequence

        from `northwind1-313400`.`northwind_etl`.`shippers`
    )
select * from source