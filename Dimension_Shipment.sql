with shipment_details as (
 SELECT 
      DISTINCT Order_ID,
      Date,
      Fulfilment,
      Sales_Channel,
      Ship_Service_Level,
      Fulfilled_By,
      Status,
      Courier_Status,
      B2B
FROM
    {{ source('fedex','cleaned_data') }}
)
SELECT * FROM shipment_details