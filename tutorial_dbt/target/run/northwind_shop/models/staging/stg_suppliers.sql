

  create or replace view `northwind1-313400`.`dbt_arthur`.`stg_suppliers`
  OPTIONS()
  as with
    source as (
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
            /*Stitch Columns*/	
            ,_sdc_batched_at		
            ,_sdc_extracted_at as last_etl_run
            ,_sdc_table_version
            ,_sdc_received_at	
            ,_sdc_sequence

        from `northwind1-313400`.`northwind_etl`.`suppliers`
    )
select * from source;

