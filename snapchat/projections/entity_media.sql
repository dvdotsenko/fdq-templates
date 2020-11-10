CREATE OR REPLACE VIEW "SNAPCHAT_VIEWS"."ENTITY_MEDIA" AS

SELECT 

      MEDIA_ID
      , UPDATED_AT
      , AD_ACCOUNT_ID
      , CREATED_AT
      , FILE_NAME
      , DOWNLOAD_LINK
      , MEDIA_STATUS
      , MEDIA_NAME
      , MEDIA_TYPE

FROM (

  SELECT 
      ID::VARCHAR(256)                          AS MEDIA_ID
      , UPDATED_AT::TIMESTAMP_TZ(9)             AS UPDATED_AT
      , AD_ACCOUNT_ID::VARCHAR(256)             AS AD_ACCOUNT_ID
      , CREATED_AT::TIMESTAMP_TZ(9)             AS CREATED_AT
      , FILE_NAME::VARCHAR(256)                 AS FILE_NAME
      , DOWNLOAD_LINK::VARCHAR(256)             AS DOWNLOAD_LINK
      , MEDIA_STATUS::VARCHAR(256)              AS MEDIA_STATUS
      , NAME::VARCHAR(256)                      AS MEDIA_NAME
      , TYPE::VARCHAR(256)                      AS MEDIA_TYPE
      , _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)
      , ROW_NUMBER() OVER (PARTITION BY ID ORDER BY _FIVETRAN_SYNCED DESC) AS ROW_NUM
  FROM "SNAPCHAT_ADS"."MEDIA_HISTORY"

)
WHERE ROW_NUM = 1
;