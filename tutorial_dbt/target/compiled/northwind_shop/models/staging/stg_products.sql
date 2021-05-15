with
    source as (
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
            , 
                case
                 when discontinued = 1 then True
                 else False
                end as is_discontinued 
            /* Stitich Columns*/
            , _sdc_table_version
            , _sdc_sequence
            , _sdc_batched_at	
            , _sdc_extracted_at	
            , _sdc_received_at

        from `northwind1-313400`.`northwind_etl`.`products`
    )
select * from source