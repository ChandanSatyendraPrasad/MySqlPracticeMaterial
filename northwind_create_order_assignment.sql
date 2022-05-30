use northwind;
/*
Create Orders Report
• Show Customer First Name, Last Name
• Shipping Company Name
• Order Date (formatted as January, 1, 2018), Shipping Address (street, city, state, zip, country)
• Product Code, Product Name, List Price, quantity ordered, and total cost of line item
• Provide friendly column names
• Format numbers to have commas and limit decimals to two places
*/
SELECT * FROM customers;
SELECT FIRST_NAME,LAST_NAME FROM customers;
SELECT S.COMPANY FROM SHIPPERS S JOIN ORDERS AS OS WHERE OS.SHIPPER_ID=S.ID;
SELECT C.ID,C.FIRST_NAME,C.LAST_NAME, S.COMPANY,O.SHIP_ADDRESS,O.SHIP_CITY,O.SHIP_STATE_PROVINCE,O.SHIP_ZIP_POSTAL_CODE,O.SHIP_COUNTRY_REGION FROM CUSTOMERS C,SHIPPERS S,ORDER_DETAILS OD
JOIN  
ORDERS AS O WHERE O.CUSTOMER_ID=C.ID AND O.SHIPPER_ID=S.ID AND OD.ORDER_ID=O.ID
;
SELECT PRODUCT_CODE,PRODUCT_NAME,LIST_PRICE FROM PRODUCTS AS P WHERE ID IN (SELECT PRODUCT_ID FROM ORDER_DETAILS AS OD,ORDERS AS O WHERE OD.ORDER_ID=O.ID); 
SELECT  P.ID,P.PRODUCT_CODE,P.PRODUCT_NAME,P.LIST_PRICE,C.FIRST_NAME,C.LAST_NAME, S.COMPANY,O.SHIP_ADDRESS,O.SHIP_CITY,O.SHIP_STATE_PROVINCE,O.SHIP_ZIP_POSTAL_CODE,O.SHIP_COUNTRY_REGION
FROM 
PRODUCTS AS P 
JOIN 
ORDER_DETAILS AS OD 
JOIN 
ORDERS AS O 
JOIN 
CUSTOMERS AS C
JOIN 
SHIPPERS AS S
WHERE O.ID=OD.ORDER_ID AND P.ID=OD.PRODUCT_ID AND O.CUSTOMER_ID=C.ID AND O.SHIPPER_ID=S.ID; 

-- SOLUTION
SELECT 
    cust.first_name AS 'First Name',
    cust.last_name AS 'Last Name',
    ord.ship_address AS 'Street',
    ord.ship_city AS 'City',
    ord.ship_state_province AS 'State',
    ord.ship_zip_postal_code AS 'Zip',
    ord.ship_country_region AS 'Country',
    shippers.company AS 'Shipper',
    DATE_FORMAT(ord.order_date, '%M %D %Y') AS 'Order Date',
    products.product_code AS 'Product Code',
    products.product_name AS 'Product Name',
    FORMAT(ord_det.quantity, 0) AS 'Qty Ordered',
    FORMAT(products.standard_cost, 2) AS 'Cost',
    FORMAT(ord_det.quantity * products.standard_cost,
        2) AS 'Total Cost'
FROM
    orders AS ord
        JOIN
    order_details AS ord_det ON ord.id = ord_det.order_id
        JOIN
    customers AS cust ON ord.customer_id = cust.id
        JOIN
    shippers ON shippers.id = ord.shipper_id
        JOIN
    products ON ord_det.product_id = products.id;
