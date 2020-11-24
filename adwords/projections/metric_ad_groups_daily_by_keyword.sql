CREATE OR REPLACE VIEW "ADWORDS_VIEWS"."METRIC_AD_GROUPS_DAILY_BY_KEYWORD" AS

SELECT

	CUSTOMER_ID::VARCHAR    									        AS CUSTOMER_ID
	, CAMPAIGN_ID::VARCHAR  									        AS CAMPAIGN_ID
	, AD_GROUP_ID::VARCHAR  									        AS AD_GROUP_ID
	, AD_NETWORK_TYPE_1::VARCHAR(256)									AS AD_NETWORK_TYPE_1
	, AD_NETWORK_TYPE_2::VARCHAR(256)									AS AD_NETWORK_TYPE_2
	, CRITERIA::VARCHAR(256)									        AS KEYWORD
    , LABELS::VARIANT									                AS LABELS
	, KEYWORD_MATCH_TYPE::VARCHAR(256)									AS KEYWORD_MATCH_TYPE
    , DATE::DATE									                    AS DATE
	, ID::VARCHAR   									                AS __RECORD_ID
    , _FIVETRAN_ID::VARCHAR(256)									    AS _FIVETRAN_ID
	, _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)									AS _FIVETRAN_SYNCED
	, BASE_AD_GROUP_ID::VARCHAR     									AS BASE_AD_GROUP_ID
	, BASE_CAMPAIGN_ID::VARCHAR     									AS BASE_CAMPAIGN_ID
--	, ACCOUNT_CURRENCY_CODE::VARCHAR(256)								AS ACCOUNT_CURRENCY_CODE
--	, ACCOUNT_TIME_ZONE::VARCHAR(256)									AS ACCOUNT_TIME_ZONE
--	, BIDDING_STRATEGY_ID::NUMBER(38,0)									AS BIDDING_STRATEGY_ID
--	, BIDDING_STRATEGY_NAME::VARCHAR(256)								AS BIDDING_STRATEGY_NAME
--	, BIDDING_STRATEGY_SOURCE::VARCHAR(256)								AS BIDDING_STRATEGY_SOURCE
--	, BIDDING_STRATEGY_TYPE::VARCHAR(256)								AS BIDDING_STRATEGY_TYPE

	, IMPRESSIONS::NUMBER(38,0)									        AS IMPRESSIONS
	, INTERACTIONS::NUMBER(38,0)									    AS INTERACTIONS
	, CLICKS::NUMBER(38,0)									            AS CLICKS
	, COST::FLOAT									                    AS COST
	, ENGAGEMENTS::NUMBER(38,0)									        AS ENGAGEMENTS

    , ACTIVE_VIEW_IMPRESSIONS::NUMBER(38,0)								AS ACTIVE_VIEW_IMPRESSIONS
	, ACTIVE_VIEW_MEASURABLE_COST::FLOAT								AS ACTIVE_VIEW_MEASURABLE_COST
	, ACTIVE_VIEW_MEASURABLE_IMPRESSIONS::NUMBER(38,0)					AS ACTIVE_VIEW_MEASURABLE_IMPRESSIONS

	, VIDEO_QUARTILE_100_RATE::FLOAT									AS VIDEO_QUARTILE_100_RATE
	, VIDEO_QUARTILE_25_RATE::FLOAT									    AS VIDEO_QUARTILE_25_RATE
	, VIDEO_QUARTILE_50_RATE::FLOAT									    AS VIDEO_QUARTILE_50_RATE
	, VIDEO_QUARTILE_75_RATE::FLOAT									    AS VIDEO_QUARTILE_75_RATE
	, VIDEO_VIEW_RATE::FLOAT									        AS VIDEO_VIEW_RATE
	, VIDEO_VIEWS::NUMBER(38,0)									        AS VIDEO_VIEWS

    , CREATIVE_QUALITY_SCORE::VARCHAR(256)								AS CREATIVE_QUALITY_SCORE
	, AVERAGE_TIME_ON_SITE::FLOAT									    AS AVERAGE_TIME_ON_SITE
	, POST_CLICK_QUALITY_SCORE::VARCHAR(256)							AS POST_CLICK_QUALITY_SCORE
	, SEARCH_ABSOLUTE_TOP_IMPRESSION_SHARE::VARCHAR(256)				AS SEARCH_ABSOLUTE_TOP_IMPRESSION_SHARE
	, SEARCH_BUDGET_LOST_ABSOLUTE_TOP_IMPRESSION_SHARE::VARCHAR(256)	AS SEARCH_BUDGET_LOST_ABSOLUTE_TOP_IMPRESSION_SHARE
	, SEARCH_BUDGET_LOST_TOP_IMPRESSION_SHARE::VARCHAR(256)				AS SEARCH_BUDGET_LOST_TOP_IMPRESSION_SHARE
	, SEARCH_EXACT_MATCH_IMPRESSION_SHARE::VARCHAR(256)					AS SEARCH_EXACT_MATCH_IMPRESSION_SHARE
	, SEARCH_IMPRESSION_SHARE::VARCHAR(256)								AS SEARCH_IMPRESSION_SHARE
	, SEARCH_PREDICTED_CTR::VARCHAR(256)								AS SEARCH_PREDICTED_CTR
	, SEARCH_RANK_LOST_ABSOLUTE_TOP_IMPRESSION_SHARE::FLOAT				AS SEARCH_RANK_LOST_ABSOLUTE_TOP_IMPRESSION_SHARE
	, SEARCH_RANK_LOST_IMPRESSION_SHARE::VARCHAR(256)					AS SEARCH_RANK_LOST_IMPRESSION_SHARE
	, SEARCH_RANK_LOST_TOP_IMPRESSION_SHARE::FLOAT						AS SEARCH_RANK_LOST_TOP_IMPRESSION_SHARE
	, SEARCH_TOP_IMPRESSION_SHARE::FLOAT								AS SEARCH_TOP_IMPRESSION_SHARE
	, TOP_IMPRESSION_PERCENTAGE::FLOAT									AS TOP_IMPRESSION_PERCENTAGE

	, GMAIL_FORWARDS::NUMBER(38,0)									    AS GMAIL_FORWARDS
	, GMAIL_SAVES::NUMBER(38,0)									        AS GMAIL_SAVES
	, GMAIL_SECONDARY_CLICKS::NUMBER(38,0)								AS GMAIL_SECONDARY_CLICKS

	, CONVERSIONS::FLOAT									            AS CONVERSIONS
	, CONVERSION_VALUE::FLOAT									        AS CONVERSION_VALUE
	, ALL_CONVERSION_VALUE::FLOAT									    AS ALL_CONVERSION_VALUE
	, ALL_CONVERSIONS::FLOAT									        AS ALL_CONVERSIONS
	, CROSS_DEVICE_CONVERSIONS::FLOAT									AS CROSS_DEVICE_CONVERSIONS

	, VIEW_THROUGH_CONVERSIONS::NUMBER(38,0)							AS VIEW_THROUGH_CONVERSIONS
    , CURRENT_MODEL_ATTRIBUTED_CONVERSION_VALUE::FLOAT					AS CURRENT_MODEL_ATTRIBUTED_CONVERSION_VALUE
	, CURRENT_MODEL_ATTRIBUTED_CONVERSIONS::FLOAT						AS CURRENT_MODEL_ATTRIBUTED_CONVERSIONS
	, VALUE_PER_ALL_CONVERSION::FLOAT									AS VALUE_PER_ALL_CONVERSION
	, VALUE_PER_CONVERSION::FLOAT									    AS VALUE_PER_CONVERSION
	, VALUE_PER_CURRENT_MODEL_ATTRIBUTED_CONVERSION::FLOAT				AS VALUE_PER_CURRENT_MODEL_ATTRIBUTED_CONVERSION

	, CLICK_ASSISTED_CONVERSION_VALUE::FLOAT							    AS CLICK_ASSISTED_CONVERSION_VALUE
	, CLICK_ASSISTED_CONVERSIONS_OVER_LAST_CLICK_CONVERSIONS::FLOAT		    AS CLICK_ASSISTED_CONVERSIONS_OVER_LAST_CLICK_CONVERSIONS
	, CLICK_ASSISTED_CONVERSIONS::NUMBER(38,0)							    AS CLICK_ASSISTED_CONVERSIONS
	, IMPRESSION_ASSISTED_CONVERSION_VALUE::FLOAT						    AS IMPRESSION_ASSISTED_CONVERSION_VALUE
	, IMPRESSION_ASSISTED_CONVERSIONS_OVER_LAST_CLICK_CONVERSIONS::FLOAT    AS IMPRESSION_ASSISTED_CONVERSIONS_OVER_LAST_CLICK_CONVERSIONS
	, IMPRESSION_ASSISTED_CONVERSIONS::NUMBER(38,0)							AS IMPRESSION_ASSISTED_CONVERSIONS

FROM "ADWORDS"."KEYWORDS_PERFORMANCE_REPORT"
;