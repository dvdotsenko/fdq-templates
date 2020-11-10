CREATE OR REPLACE VIEW "TWITTER_ADS_VIEWS"."ENTITY_TWEET_HASHTAGS" AS

SELECT 

	TWEET_ID::VARCHAR(256)              AS TWEET_ID
	, INDEX::NUMBER(38,0)               AS HASHTAG_INDEX
	, TEXT::VARCHAR(256)                AS HASHTAG_TEXT
	, INDICES::VARIANT                  AS HASHTAG_INDICES
	, _FIVETRAN_SYNCED::TIMESTAMP_TZ(9) AS _FIVETRAN_SYNCED

FROM "TWITTER_ADS"."TWEET_HASHTAG"
;
