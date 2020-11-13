CREATE OR REPLACE VIEW "FACEBOOK_VIEWS"."METRIC_ADS_DAILY_ACTION_VALUES_PLATFORM_POSITION" AS
SELECT 

	AD_ID::VARCHAR(256)					    AS AD_ID
	, DATE::DATE							AS DATE
    , PLATFORM_POSITION::VARCHAR(256)       AS PLATFORM_POSITION
    , PUBLISHER_PLATFORM::VARCHAR(256)      AS PUBLISHER_PLATFORM
	, INDEX::NUMBER(38,0)					AS INDEX
	, ACTION_TYPE::VARCHAR(256)				AS ACTIONS
	, VALUE::FLOAT							AS ACTION_VALUES_VALUE
	, _1_D_VIEW::NUMBER(38,0)				AS ACTION_VALUES_1D_VIEW
	, _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)		AS _FIVETRAN_SYNCED
	, _7_D_CLICK::NUMBER(38,0)				AS ACTION_VALUES_7D_CLICK
    
FROM "FACEBOOK"."PLATFORM_POSITION_ACTION_VALUES"
;