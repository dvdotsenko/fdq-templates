CREATE OR REPLACE VIEW PINTEREST_VIEWS.ENTITY_ADVERTISERS AS
SELECT
    ID,
    NAME,
    CURRENCY,
    COUNTRY,
    CREATED_AT,
    UPDATED_AT
 FROM (
SELECT ID::VARCHAR AS ID,
       NAME::VARCHAR AS NAME,
       CURRENCY::VARCHAR AS CURRENCY,
       COUNTRY::VARCHAR AS COUNTRY,
       CREATED_TIME::TIMESTAMP_TZ AS CREATED_AT,
       UPDATED_TIME::TIMESTAMP_TZ AS UPDATED_AT,
       -- this is temporary hotfix to avoid data discrepancy - duplicates in entity tables
       ROW_NUMBER() OVER (PARTITION BY ID ORDER BY _FIVETRAN_SYNCED DESC) AS ROW_NUM
FROM "PINTEREST_ADS_1"."ADVERTISER_HISTORY")
WHERE ROW_NUM = 1
;