with products_data as (
 SELECT 
        DISTINCT ASIN,
        Style,
        SKU,
        Category,
        Size
FROM
    {{ source('fedex','cleaned_data') }}
)
SELECT * FROM products_data