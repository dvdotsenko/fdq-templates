CREATE OR REPLACE VIEW "ADWORDS_VIEWS"."METRIC_AD_GROUPS_DAILY_BY_AUDIENCE" AS

SELECT

  DATE::DATE                                            AS DATE
  , CUSTOMER_ID::NUMBER(38,0)                           AS CUSTOMER_ID
  , ACCOUNT_TIME_ZONE::VARCHAR(256)                     AS ACCOUNT_TIME_ZONE
  , ACCOUNT_CURRENCY_CODE::VARCHAR(256)                 AS ACCOUNT_CURRENCY_CODE
  , BASE_CAMPAIGN_ID::NUMBER(38,0)                      AS BASE_CAMPAIGN_ID
  , CAMPAIGN_ID::NUMBER(38,0)                           AS CAMPAIGN_ID
  , BIDDING_STRATEGY_ID::NUMBER(38,0)                   AS BIDDING_STRATEGY_ID
  , BASE_AD_GROUP_ID::NUMBER(38,0)                      AS BASE_AD_GROUP_ID
  , AD_GROUP_ID::NUMBER(38,0)                           AS AD_GROUP_ID
  , AD_NETWORK_TYPE_1::VARCHAR(256)                     AS AD_NETWORK_TYPE_1
  , AD_NETWORK_TYPE_2::VARCHAR(256)                     AS AD_NETWORK_TYPE_2
  , ID::NUMBER(38,0)                                    AS __RECORD_ID
  , _FIVETRAN_ID::VARCHAR(256)                          AS _FIVETRAN_ID
  , USER_LIST_NAME::VARCHAR(256)                        AS USER_LIST_NAME
  
  , COST::FLOAT                                         AS COST
  , ACTIVE_VIEW_MEASURABLE_COST::FLOAT                  AS ACTIVE_VIEW_MEASUREABLE_COST
  , IMPRESSIONS::NUMBER(38,0)                           AS IMPRESSIONS
  , ACTIVE_VIEW_IMPRESSIONS::NUMBER(38,0)               AS ACTIVE_VIEW_IMPRESSIONS
  , ACTIVE_VIEW_MEASURABLE_IMPRESSIONS::NUMBER(38,0)    AS ACTIVE_VIEW_MEASURABLE_IMPRESSIONS
  , CLICKS::NUMBER(38,0)                                AS CLICKS
  , ENGAGEMENTS::NUMBER(38,0)                           AS ENGAGEMENTS
  , INTERACTIONS::NUMBER(38,0)                          AS INTERACTIONS
  , TOP_IMPRESSION_PERCENTAGE::FLOAT                    AS TOP_IMPRESSION_PERCENTAGE

  , GMAIL_SECONDARY_CLICKS::NUMBER(38,0)                AS GMAIL_SECONDARY_CLICKS
  , GMAIL_FORWARDS::NUMBER(38,0)                        AS GMAIL_FORWARDS
  , GMAIL_SAVES::NUMBER(38,0)                           AS GMAIL_SAVES
  
  , VIDEO_VIEWS::NUMBER(38,0)                           AS VIDEO_VIEWS
  , VIDEO_VIEW_RATE::FLOAT                              AS VIDEO_VIEW_RATE
  , VIDEO_QUARTILE_25_RATE::FLOAT                       AS VIDEO_QUARTILE_25_RATE
  , VIDEO_QUARTILE_50_RATE::FLOAT                       AS VIDEO_QUARTILE_50_RATE
  , VIDEO_QUARTILE_75_RATE::FLOAT                       AS VIDEO_QUARTILE_75_RATE
  , VIDEO_QUARTILE_100_RATE::FLOAT                      AS VIDEO_QUARTILE_100_RATE
   
  , CONVERSIONS::FLOAT                                  AS CONVERSIONS
  , ALL_CONVERSIONS::FLOAT                              AS ALL_CONVERSIONS
  , ALL_CONVERSION_VALUE::FLOAT                         AS ALL_CONVERSION_VALUE
  , VIEW_THROUGH_CONVERSIONS::NUMBER(38,0)              AS VIEW_THROUGH_CONVERSIONS
  , CROSS_DEVICE_CONVERSIONS::FLOAT                     AS CROSS_DEVICE_CONVERSIONS
  , VALUE_PER_ALL_CONVERSION::FLOAT                     AS VALUE_PER_ALL_CONVERSION
  , VALUE_PER_CONVERSION::FLOAT                         AS VALUE_PER_CONVERSION
  , CONVERSION_VALUE::FLOAT                             AS CONVERSION_VALUE

  , _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)                   AS _FIVETRAN_SYNCED

FROM "ADWORDS"."AUDIENCE_PERFORMANCE_REPORT"
;