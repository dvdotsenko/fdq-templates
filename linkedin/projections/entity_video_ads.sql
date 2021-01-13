CREATE OR REPLACE VIEW "LINKEDIN_VIEWS"."ENTITY_VIDEO_ADS" AS 

SELECT
    ID
    , NAME
    , TYPE
    , ACCOUNT_ID
    , OWNER  
    , CREATED_TIME
    , LAST_MODIFIED_TIME
    , ACCOUNT_LAST_MODIFIED_TIME
    , PROCESSED_AT

FROM (

  SELECT
      ID::VARCHAR                                   AS ID
    , NAME::VARCHAR                                 AS NAME
    , TYPE::VARCHAR                                 AS TYPE
    , ACCOUNT_ID::VARCHAR                           AS ACCOUNT_ID
    , OWNER::VARCHAR                                AS OWNER  
    , CREATED_TIME::TIMESTAMP_TZ                    AS CREATED_TIME
    , LAST_MODIFIED_TIME::TIMESTAMP_TZ              AS LAST_MODIFIED_TIME
    , ACCOUNT_LAST_MODIFIED_TIME::TIMESTAMP_TZ      AS ACCOUNT_LAST_MODIFIED_TIME
    , _FIVETRAN_SYNCED::TIMESTAMP_TZ                AS PROCESSED_AT
    , ROW_NUMBER() OVER (PARTITION BY ID ORDER BY _FIVETRAN_SYNCED DESC) AS ROW_NUM
  FROM "LINKEDIN_ADS"."VIDEO_AD_HISTORY"

)
WHERE ROW_NUM = 1
;