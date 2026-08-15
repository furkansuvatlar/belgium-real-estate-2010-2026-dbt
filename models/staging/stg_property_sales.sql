WITH source_data AS(
    SELECT *
    FROM {{source("statbel_raw","property_sales")}}
)
SELECT CAST(year AS int64) as sales_year,
       CAST(CD_TYPE_NL AS string) as property_type_nl,
       CAST(CD_TYPE_FR AS string) as property_type_fr,
       CAST(CD_REFNIS AS int64) as refnis_code,
       CAST(CD_REFNIS_NL AS string) as refnis_exp_nl,
       CAST(CD_REFNIS_FR AS string) as refnis_exp_fr,
       CAST(CD_PERIOD AS string) as sales_period,
       CAST(CD_CLASS_SURFACE AS string) as class_surface,
       CAST(MS_TOTAL_TRANSACTIONS AS int64) as total_transactions,
       CAST(MS_P_25 AS int64) as percentile_25,
       CAST(MS_P_50_median AS int64) as percentile_50,
       CAST(MS_P_75 AS int64) as percentile_75,
       CAST(CD_niveau_refnis AS int64) as refnis_level
FROM source_data