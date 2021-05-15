

  create or replace view `northwind1-313400`.`dbt_arthur`.`stg_customers`
  OPTIONS()
  as with
    source as (
        select 
           /*primary key*/
            customer_id
            ,country	
            ,city	
            ,fax	
            ,postal_code	
            ,address	
            ,region	
            ,contact_name		
            ,phone	
            ,company_name	
            ,contact_title
            /*Stitch Columns*/	
            ,_sdc_batched_at		
            ,_sdc_extracted_at as last_etl_run
            ,_sdc_table_version
            ,_sdc_received_at	
            ,_sdc_sequence

        from `northwind1-313400`.`northwind_etl`.`customers`
    )
select * from source;

