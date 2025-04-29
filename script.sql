-- Шаг 2. Изучение данных нового источника.

-- 2.1. Данные таблиц:

SELECT *
FROM external_source.craft_products_orders as cpo;

SELECT *
FROM external_source.customers as c;

-- 2.2. Проверка на наличие полей с повторяющимися значениями

SELECT cpo.craftsman_id,
       COUNT(*)
FROM external_source.craft_products_orders as cpo
GROUP BY cpo.craftsman_id
HAVING COUNT(*) > 1;

SELECT cpo.product_id,
       COUNT(*)
FROM external_source.craft_products_orders as cpo
GROUP BY cpo.product_id
HAVING COUNT(*) > 1;

SELECT cpo.order_id,
       COUNT(*)
FROM external_source.craft_products_orders as cpo
GROUP BY cpo.order_id
HAVING COUNT(*) > 1;

SELECT cpo.customer_id,
       COUNT(*)
FROM external_source.craft_products_orders as cpo
GROUP BY cpo.customer_id
HAVING COUNT(*) > 1;

SELECT c.customer_id,
	   COUNT(*)
FROM external_source.customers as c
GROUP BY c.customer_id
HAVING COUNT(*) > 1;