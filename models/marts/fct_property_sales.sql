WITH cleaned AS(
    SELECT *
    FROM {{ref("stg_property_sales")}}
    WHERE refnis_level = 5
)
SELECT sales_year,
       property_type_nl,
       refnis_code, 
       refnis_exp_nl,
       total_transactions,
       percentile_25,
       percentile_50,
       percentile_75
FROM cleaned