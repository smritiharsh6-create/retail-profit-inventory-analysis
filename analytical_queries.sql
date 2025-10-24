

Use bookstoredb;
Select title, price, cost_price, round(((Price-cost_price)/price)*100,2) AS Profit_Margin
From books
order by Profit_Margin Desc;

With Demand_by_book AS(
select book_id, sum(quantity) AS total_sold
from sales
group by book_id)
select
b.title,
b.stock_level,
d.total_sold
from 
Books b
join 
demand_by_book d
on b.book_id=d.book_id
where b.stock_level <= 15
and d. total_sold> 10;


SELECT ROUND(SUM((b.price - b.cost_price) * s.quantity), 2) AS total_net_profit,
coalesce(CONCAT(a.first_name, ' ', a.last_name),'Unkown author')AS author_full_name 
FROM Bookstoredb.Sales s 
JOIN Bookstoredb.Books b 
ON s.book_id = b.book_id 
LEFT JOIN  Bookstoredb.Author a 
ON b.author_id = a.author_id 
GROUP BY author_full_name 
ORDER BY total_net_profit DESC;