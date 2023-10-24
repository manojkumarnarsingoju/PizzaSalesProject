--SELECT SUM(total_price)as Total_revenue from pizza_sales
--SELECT SUM(total_price)/COUNT(DISTINCT order_id)as total_revenue from pizza_sales
-- averge sales 
 --select SUM(quantity) as TotalpizzasSelled from pizza_sales
 --select COUNT(DISTINCT order_id) as orderd from pizza_sales
-- select cast(
--cast(sum(quantity) as decimal(10,2))/
-- cast(count(distinct( order_id)) as decimal(10,2)) as decimal(10,2))
-- as total from pizza_sales
--------------------------------- charts requriement

--select datename(DW, order_date) as order_day, count(distinct order_id) as total_orders from pizza_sales 
--group by datename(DW, order_date)  
--select * from pizza_sales
--select datepart(hour,order_time) as orderhrs, count(distinct order_id) from pizza_sales
--group by datepart(hour,order_time)
--order by datepart(hour,order_time)
--select * from pizza_sales

--SELECT  pizza_size, sum(total_price)*100 / (select sum(total_price) from pizza_sales) as pct  from pizza_sales
--where month(order_date) =1
--group by pizza_size
--order by pct desc
--select * from pizza_sales
--select pizza_category, sum(quantity) as totalsold from pizza_sales
--group by pizza_category

--select top 5 pizza_name, sum(quantity) as pt from pizza_sales
--group by pizza_name
--order by pt desc
select top 5 pizza_name, sum(quantity) as pt from pizza_sales
where month(order_date) =1 -- january 
group by pizza_name
order by pt asc
