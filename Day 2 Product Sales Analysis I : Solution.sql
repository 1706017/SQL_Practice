SELECT 
      Product.product_name as product_name,Sales.year as year, Sales.price as price
FROM 
    Sales JOIN Product 
ON 
   Sales.product_id = Product.product_id;
