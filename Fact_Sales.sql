
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

/* {{ config(materialized='table') }} */

with source_data as (
 SELECT 
        Index_col,
        Order_ID,
        ASIN,
        ship_city,
        ship_state,
        ship_postal_code,
        Qty,
        Amount,
        Promotion_ids
FROM
    {{ source('fedex','cleaned_data') }}
)

SELECT *
from source_data


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
