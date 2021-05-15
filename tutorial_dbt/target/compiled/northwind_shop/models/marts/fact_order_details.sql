with 
    customers as (
        select * from `northwind1-313400`.`dbt_arthur`.`dim_customers`
    )
    , suppliers as (
        select * from `northwind1-313400`.`dbt_arthur`.`dim_suppliers`
    )
    , shippers as (
        select * from `northwind1-313400`.`dbt_arthur`.`dim_shippers`
    )
    , products as (
        select * from `northwind1-313400`.`dbt_arthur`.`dim_products`
    )
    
    , orders_with_sk as ( 
        select 
            orders.order_id
            ,customers.customer_sk as customer_fk
            ,shippers.shipper_sk as shipper_fk            
            ,orders.ship_region	
            ,orders.shipped_date
            ,orders.ship_country	
            ,orders.ship_name
            ,orders.order_date		
            ,orders.ship_postal_code	
            ,orders.ship_city	
            ,orders.freight	
            ,orders.required_date
            ,orders.ship_address 

        from `northwind1-313400`.`dbt_arthur`.`stg_orders` as orders
        left join customers on orders.customer_id = customers.customer_id
        left join shippers on orders.shipper_id = shippers.shipper_id
    )
    , orders_details_with_sk as (
        select 
            order_details.order_id
            ,products.product_sk as product_fk	
            ,order_details.is_discountinued	
            ,order_details.unit_price	
            ,order_details.quantity	
        from `northwind1-313400`.`dbt_arthur`.`stg_orderdetail` as order_details
        left join products on order_details.product_id = products.product_id
    )
    , final as (
        select 
            orders_details_with_sk.order_id
            ,orders_with_sk.customer_fk
            ,orders_with_sk.shipper_fk            
            ,orders_with_sk.ship_region	
            ,orders_with_sk.shipped_date
            ,orders_with_sk.ship_country	
            ,orders_with_sk.ship_name
            ,orders_with_sk.order_date		
            ,orders_with_sk.ship_postal_code	
            ,orders_with_sk.ship_city	
            ,orders_with_sk.freight	
            ,orders_with_sk.required_date
            ,orders_with_sk.ship_address
            ,orders_details_with_sk.product_fk	
            ,orders_details_with_sk.is_discountinued	
            ,orders_details_with_sk.unit_price	
            ,orders_details_with_sk.quantity	
        from orders_with_sk
        left join orders_details_with_sk on orders_with_sk.order_id = orders_details_with_sk.order_id
     )
select * from final