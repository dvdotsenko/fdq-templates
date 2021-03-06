CREATE OR REPLACE VIEW "SNAPCHAT_VIEWS"."ENTITY_CREATIVES" AS

SELECT 

      CREATIVE_ID
      , AD_ACCOUNT_ID
      , SHAREABLE
      , ATTACHMENT_TYPE
      , CALL_TO_ACTION
      , CREATIVE_NAME
      , PACKAGING_STATUS
      , REVIEW_STATUS
      , CREATIVE_TYPE
      , PREVIEW_CREATIVE_ID
      , PLAYBACK_TYPE
      , TOP_SNAP_MEDIA_ID
      , TOP_SNAP_CROP_POSITION
      , HEADLINE
      , BRAND_NAME
      , AD_PRODUCT
      , LONGFORM_VIDEO_MEDIA_ID
      , APP_INSTALL_APP_NAME
      , APP_INSTALL_IOS_APP_ID
      , APP_INSTALL_ANDROID_APP_URL
      , APP_INSTALL_ICON_MEDIA_ID
      , DEEP_LINK_IOS_APP_ID
      , DEEP_LINK_ANDROID_APP_URL
      , DEEP_LINK_APP_NAME
      , DEEP_LINK_ICON_MEDIA_ID
      , DEEP_LINK_URI
      , WEB_VIEW_URL
      , WEB_VIEW_ALLOW_SNAP_JAVASCRIPT_SDK
      , WEB_VIEW_USE_IMMERSIVE_MODE
      , WEB_VIEW_BLOCK_PRELOAD
      , CREATED_AT
      , UPDATED_AT

FROM (

  SELECT 
      ID::VARCHAR(256)                                  AS CREATIVE_ID
      , UPDATED_AT::TIMESTAMP_TZ(9)                     AS UPDATED_AT
      , AD_ACCOUNT_ID::VARCHAR(256)                     AS AD_ACCOUNT_ID
      , CREATED_AT::TIMESTAMP_TZ(9)                     AS CREATED_AT
      , SHAREABLE::BOOLEAN                              AS SHAREABLE
      , ATTACHMENT_TYPE::VARCHAR(256)                   AS ATTACHMENT_TYPE
      , CALL_TO_ACTION::VARCHAR(256)                    AS CALL_TO_ACTION
      , NAME::VARCHAR(256)                              AS CREATIVE_NAME
      , PACKAGING_STATUS::VARCHAR(256)                  AS PACKAGING_STATUS
      , REVIEW_STATUS::VARCHAR(256)                     AS REVIEW_STATUS
      , TYPE::VARCHAR(256)                              AS CREATIVE_TYPE
      , PREVIEW_CREATIVE_ID::VARCHAR(256)               AS PREVIEW_CREATIVE_ID
      , PLAYBACK_TYPE::VARCHAR(256)                     AS PLAYBACK_TYPE
      , TOP_SNAP_MEDIA_ID::VARCHAR(256)                 AS TOP_SNAP_MEDIA_ID
      , TOP_SNAP_CROP_POSITION::VARCHAR(256)            AS TOP_SNAP_CROP_POSITION
      , HEADLINE::VARCHAR(256)                          AS HEADLINE
      , BRAND_NAME::VARCHAR(256)                        AS BRAND_NAME
      , AD_PRODUCT::VARCHAR(256)                        AS AD_PRODUCT
      , LONGFORM_VIDEO_MEDIA_ID::VARCHAR(256)           AS LONGFORM_VIDEO_MEDIA_ID
      , APP_INSTALL_APP_NAME::VARCHAR(256)              AS APP_INSTALL_APP_NAME
      , APP_INSTALL_IOS_APP_ID::VARCHAR(256)            AS APP_INSTALL_IOS_APP_ID
      , APP_INSTALL_ANDROID_APP_URL::VARCHAR(256)       AS APP_INSTALL_ANDROID_APP_URL
      , APP_INSTALL_ICON_MEDIA_ID::VARCHAR(256)         AS APP_INSTALL_ICON_MEDIA_ID
      , DEEP_LINK_IOS_APP_ID::VARCHAR(256)              AS DEEP_LINK_IOS_APP_ID
      , DEEP_LINK_ANDROID_APP_URL::VARCHAR(256)         AS DEEP_LINK_ANDROID_APP_URL
      , DEEP_LINK_APP_NAME::VARCHAR(256)                AS DEEP_LINK_APP_NAME
      , DEEP_LINK_ICON_MEDIA_ID::VARCHAR(256)           AS DEEP_LINK_ICON_MEDIA_ID
      , DEEP_LINK_URI::VARCHAR(256)                     AS DEEP_LINK_URI
      , WEB_VIEW_URL::VARCHAR(256)                      AS WEB_VIEW_URL
      , WEB_VIEW_ALLOW_SNAP_JAVASCRIPT_SDK::BOOLEAN     AS WEB_VIEW_ALLOW_SNAP_JAVASCRIPT_SDK
      , WEB_VIEW_USE_IMMERSIVE_MODE::BOOLEAN            AS WEB_VIEW_USE_IMMERSIVE_MODE
      , WEB_VIEW_BLOCK_PRELOAD::BOOLEAN                 AS WEB_VIEW_BLOCK_PRELOAD
      , _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)
      , ROW_NUMBER() OVER (PARTITION BY ID ORDER BY _FIVETRAN_SYNCED DESC) AS ROW_NUM
  FROM "SNAPCHAT_ADS"."CREATIVE_HISTORY"

)
WHERE ROW_NUM = 1
;