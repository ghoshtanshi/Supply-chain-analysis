select * from "stock" limit 10

--Q1. Which products have the highest demand based on order quantity?
select "product_type" , sum("order_quantities") as "demand" from "stock" 
group by "product_type"
order by "demand" desc;

--Q2. Which suppliers contribute the most to the supply chain?
select "supplier_name" , sum("revenue_generated") as "total_revenue" from "stock"
group by "supplier_name" 
order by "total_revenue" desc;


--Q3. Which suppliers have the fastest and slowest delivery times?
select "supplier_name" , round(avg("shipping_times") , 2) as "delivery_time" from "stock"
group by "supplier_name" 
order by "delivery_time";

--Q4. Which regions generate the highest sales and order volumes?
select "location" , sum("revenue_generated") as "total_sales",
sum("order_quantities") as "order_volumes" from "stock"
group by "location" 
order by "total_sales" desc;


--Q5. Which products have the highest and lowest inventory levels?
select "product_type" , sum("stock_levels") as "inventory_levels" from "stock"
group by "product_type"
order by "inventory_levels" desc;

--Q6. What is the average shipping time by transportation mode?
select "transportation_modes" , round(avg("shipping_times") , 2) as "avg_shipping_time" from "stock"
group by "transportation_modes"
order by "avg_shipping_time" desc;


--Q7. Which products have the highest and lowest production volumes?
select "product_type" , sum("production_volumes") as "total_production" from "stock"
group by "product_type" 
order by "total_production" desc;

--Q8. Which products incur the highest manufacturing costs?
select "product_type" , sum("manufacturing_costs") as "total_manufacturing_cost" from "stock"
group by "product_type" 
order by "total_manufacturing_cost" desc;


--Q9. Which products have the highest defect rates?
select "product_type" , avg("defect_rates") as "avg_defect_rates" from "stock"
group by "product_type" 
order by "avg_defect_rates" desc;

--Q10. How are products distributed across different inspection results (Pass, Fail, and Pending)?
select "inspection_results" , count(*)  as  "product_count"  from "stock"
group by "inspection_results"
order by "product_count" desc;





