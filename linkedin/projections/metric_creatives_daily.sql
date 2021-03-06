CREATE OR REPLACE VIEW "LINKEDIN_VIEWS"."METRIC_CREATIVES_DAILY" AS 

SELECT
    CREATIVE_ID::VARCHAR                                            AS CREATIVE_ID
    , DAY::DATE                                                     AS DATE
    , ACTION_CLICKS::NUMBER(38,0)                                   AS ACTION_CLICKS
    , AD_UNIT_CLICKS::NUMBER(38,0)                                  AS AD_UNIT_CLICKS
    , CARD_CLICKS::NUMBER(38,0)                                     AS CARD_CLICKS
    , CARD_IMPRESSIONS::NUMBER(38,0)                                AS CARD_IMPRESSIONS
    , CLICKS::NUMBER(38,0)                                          AS CLICKS
    , COMMENTS_LIKES::NUMBER(38,0)                                  AS COMMENTS_LIKES
    , COMMENTS::NUMBER(38,0)                                        AS COMMENTS
    , COMPANY_PAGE_CLICKS::NUMBER(38,0)                             AS COMPANY_PAGE_CLICKS
    , CONVERSION_VALUE_IN_LOCAL_CURRENCY::NUMBER(18,1)              AS CONVERSION_VALUE_IN_LOCAL_CURRENCY
    , COST_IN_LOCAL_CURRENCY::NUMBER(18,5)                          AS COST_IN_LOCAL_CURRENCY
    , COST_IN_USD::NUMBER(18,5)                                     AS COST_IN_USD
    , EXTERNAL_WEBSITE_CONVERSIONS::NUMBER(38,0)                    AS EXTERNAL_WEBSITE_CONVERSIONS
    , EXTERNAL_WEBSITE_POST_CLICK_CONVERSIONS::NUMBER(38,0)         AS EXTERNAL_WEBSITE_POST_CLICK_CONVERSIONS
    , EXTERNAL_WEBSITE_POST_VIEW_CONVERSIONS::NUMBER(38,0)          AS EXTERNAL_WEBSITE_POST_VIEW_CONVERSIONS
    , FOLLOWS::NUMBER(38,0)                                         AS FOLLOWS
    , FULL_SCREEN_PLAYS::NUMBER(38,0)                               AS FULL_SCREEN_PLAYS
    , IMPRESSIONS::NUMBER(38,0)                                     AS IMPRESSIONS
    , LANDING_PAGE_CLICKS::NUMBER(38,0)                             AS LANDING_PAGE_CLICKS
    , LEAD_GENERATION_MAIL_CONTACT_INFO_SHARES::NUMBER(38,0)        AS LEAD_GENERATION_MAIL_CONTACT_INFO_SHARES
    , LEAD_GENERATION_MAIL_INTERESTED_CLICKS::NUMBER(38,0)          AS LEAD_GENERATION_MAIL_INTERESTED_CLICKS
    , LIKES::NUMBER(38,0)                                           AS LIKES
    , ONE_CLICK_LEAD_FORM_OPENS::NUMBER(38,0)                       AS ONE_CLICK_LEAD_FORM_OPENS
    , ONE_CLICK_LEADS::NUMBER(38,0)                                 AS ONE_CLICK_LEADS
    , OPENS::NUMBER(38,0)                                           AS OPENS
    , OTHER_ENGAGEMENTS::NUMBER(38,0)                               AS OTHER_ENGAGEMENTS
    , SHARES::NUMBER(38,0)                                          AS SHARES
    , TEXT_URL_CLICKS::NUMBER(38,0)                                 AS TEXT_URL_CLICKS
    , TOTAL_ENGAGEMENTS::NUMBER(38,0)                               AS TOTAL_ENGAGEMENTS
    , VIDEO_COMPLETIONS::NUMBER(38,0)                               AS VIDEO_COMPLETIONS
    , VIDEO_FIRST_QUARTILE_COMPLETIONS::NUMBER(38,0)                AS VIDEO_FIRST_QUARTILE_COMPLETIONS
    , VIDEO_MIDPOINT_COMPLETIONS::NUMBER(38,0)                      AS VIDEO_MIDPOINT_COMPLETIONS
    , VIDEO_THIRD_QUARTILE_COMPLETIONS::NUMBER(38,0)                AS VIDEO_THIRD_QUARTILE_COMPLETIONS
    , VIDEO_STARTS::NUMBER(38,0)                                    AS VIDEO_STARTS
    , VIDEO_VIEWS::NUMBER(38,0)                                     AS VIDEO_VIEWS
    , VIRAL_CARD_CLICKS::NUMBER(38,0)                               AS VIRAL_CARD_CLICKS
    , VIRAL_CARD_IMPRESSIONS::NUMBER(38,0)                          AS VIRAL_CARD_IMPRESSIONS
    , VIRAL_CLICKS::NUMBER(38,0)                                    AS VIRAL_CLICKS
    , VIRAL_COMMENT_LIKES::NUMBER(38,0)                             AS VIRAL_COMMENT_LIKES
    , VIRAL_COMMENTS::NUMBER(38,0)                                  AS VIRAL_COMMENTS
    , VIRAL_COMPANY_PAGE_CLICKS::NUMBER(38,0)                       AS VIRAL_COMPANY_PAGE_CLICKS
    , VIRAL_EXTRERNAL_WEBSITE_CONVERSIONS::NUMBER(38,0)             AS VIRAL_EXTRERNAL_WEBSITE_CONVERSIONS
    , VIRAL_EXTRERNAL_WEBSITE_POST_CLICK_CONVERSIONS::NUMBER(38,0)  AS VIRAL_EXTRERNAL_WEBSITE_POST_CLICK_CONVERSIONS
    , VIRAL_EXTRERNAL_WEBSITE_POST_VIEW_CONVERSIONS::NUMBER(38,0)   AS VIRAL_EXTRERNAL_WEBSITE_POST_VIEW_CONVERSIONS
    , VIRAL_FOLLOWS::NUMBER(38,0)                                   AS VIRAL_FOLLOWS
    , VIRAL_FULL_SCREEN_PLAYS::NUMBER(38,0)                         AS VIRAL_FULL_SCREEN_PLAYS
    , VIRAL_IMPRESSIONS::NUMBER(38,0)                               AS VIRAL_IMPRESSIONS
    , VIRAL_LANDING_PAGE_CLICKS::NUMBER(38,0)                       AS VIRAL_LANDING_PAGE_CLICKS
    , VIRAL_LIKES::NUMBER(38,0)                                     AS VIRAL_LIKES
    , VIRAL_ONE_CLICK_LEAD_FORM_OPENS::NUMBER(38,0)                 AS VIRAL_ONE_CLICK_LEAD_FORM_OPENS
    , VIRAL_ONE_CLICK_LEADS::NUMBER(38,0)                           AS VIRAL_ONE_CLICK_LEADS
    , VIRAL_OTHER_ENGAGEMENTS::NUMBER(38,0)                         AS VIRAL_OTHER_ENGAGEMENTS
    , VIRAL_SHARES::NUMBER(38,0)                                    AS VIRAL_SHARES
    , VIRAL_TOTAL_ENGAGEMENTS::NUMBER(38,0)                         AS VIRAL_TOTAL_ENGAGEMENTS
    , VIRAL_VIDEO_COMPLETIONS::NUMBER(38,0)                         AS VIRAL_VIDEO_COMPLETIONS
    , VIRAL_VIDEO_FIRST_QUARTILE_COMPLETIONS::NUMBER(38,0)          AS VIRAL_VIDEO_FIRST_QUARTILE_COMPLETIONS
    , VIRAL_VIDEO_MIDPOINT_COMPLETIONS::NUMBER(38,0)                AS VIRAL_VIDEO_MIDPOINT_COMPLETIONS
    , VIRAL_VIDEO_STARTS::NUMBER(38,0)                              AS VIRAL_VIDEO_STARTS
    , VIRAL_VIDEO_THIRD_QUARTILE_COMPLETIONS::NUMBER(38,0)          AS VIRAL_VIDEO_THIRD_QUARTILE_COMPLETIONS
    , VIRAL_VIDEO_VIEWS::NUMBER(38,0)                               AS VIRAL_VIDEO_VIEWS
    , _FIVETRAN_SYNCED::TIMESTAMP_TZ                                AS PROCESSED_AT

FROM "LINKEDIN_ADS"."AD_ANALYTICS_BY_CREATIVE"
;