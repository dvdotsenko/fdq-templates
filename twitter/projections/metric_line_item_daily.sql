CREATE OR REPLACE VIEW "TWITTER_ADS_VIEWS"."METRIC_LINE_ITEM_DAILY" AS

SELECT 

	ACCOUNT_ID::VARCHAR(256)                                AS ACCOUNT_ID
	, LINE_ITEM_ID::VARCHAR(256)                            AS LINE_ITEM_ID
	, DATE::TIMESTAMP_TZ(9)                                 AS DATE
	, PLACEMENT::VARCHAR(256)                               AS PLACEMENT
    , _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)                     AS _FIVETRAN_SYNCED

    , BILLED_CHARGE_LOCAL_MICRO::NUMBER(38,0)               AS BILLED_CHARGE_LOCAL_MICRO
    , BILLED_ENGAGEMENTS::NUMBER(38,0)                      AS BILLED_ENGAGEMENTS
    , IMPRESSIONS::NUMBER(38,0)                             AS IMPRESSIONS
    , QUALIFIED_IMPRESSIONS::NUMBER(38,0)                   AS QUALIFIED_IMPRESSIONS
    , CLICKS::NUMBER(38,0)                                  AS CLICKS
    , URL_CLICKS::NUMBER(38,0)                              AS URL_CLICKS
    , APP_CLICKS::NUMBER(38,0)                              AS APP_CLICKS
    , ENGAGEMENTS::NUMBER(38,0)                             AS ENGAGEMENTS
    , CARD_ENGAGEMENTS::NUMBER(38,0)                        AS CARD_ENGAGEMENTS
    , MEDIA_ENGAGEMENTS::NUMBER(38,0)                       AS MEDIA_ENGAGEMENTS
    , MEDIA_VIEWS::NUMBER(38,0)                             AS MEDIA_VIEWS
    , LIKES::NUMBER(38,0)                                   AS LIKES
    , RETWEETS::NUMBER(38,0)                                AS RETWEETS
    , FOLLOWS::NUMBER(38,0)                                 AS FOLLOWS
    , UNFOLLOWS::NUMBER(38,0)                               AS UNFOLLOWS
    , REPLIES::NUMBER(38,0)                                 AS REPLIES
    , TWEETS_SEND::NUMBER(38,0)                             AS TWEETS_SEND
    , CAROUSEL_SWIPES::NUMBER(38,0)                         AS CAROUSEL_SWIPES

    , CONVERSION_CUSTOM_METRIC::NUMBER(38,0)  AS CONVERSION_CUSTOM_METRIC
    , CONVERSION_CUSTOM_ORDER_QUANTITY_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_CUSTOM_ORDER_QUANTITY_ENGAGEMENT
    , CONVERSION_CUSTOM_ORDER_QUANTITY_VIEW::NUMBER(38,0)  AS CONVERSION_CUSTOM_ORDER_QUANTITY_VIEW
    , CONVERSION_CUSTOM_ORDER_QUANTITY::NUMBER(38,0)  AS CONVERSION_CUSTOM_ORDER_QUANTITY
    , CONVERSION_CUSTOM_POST_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_CUSTOM_POST_ENGAGEMENT
    , CONVERSION_CUSTOM_POST_VIEW::NUMBER(38,0)  AS CONVERSION_CUSTOM_POST_VIEW
    , CONVERSION_CUSTOM_SALE_AMOUNT_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_CUSTOM_SALE_AMOUNT_ENGAGEMENT
    , CONVERSION_CUSTOM_SALE_AMOUNT_VIEW::NUMBER(38,0)  AS CONVERSION_CUSTOM_SALE_AMOUNT_VIEW
    , CONVERSION_CUSTOM_SALE_AMOUNT::NUMBER(38,0)  AS CONVERSION_CUSTOM_SALE_AMOUNT
    , CONVERSION_DOWNLOADS_METRIC::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_METRIC
    , CONVERSION_DOWNLOADS_ORDER_QUANTITY_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_ORDER_QUANTITY_ENGAGEMENT
    , CONVERSION_DOWNLOADS_ORDER_QUANTITY_VIEW::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_ORDER_QUANTITY_VIEW
    , CONVERSION_DOWNLOADS_ORDER_QUANTITY::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_ORDER_QUANTITY
    , CONVERSION_DOWNLOADS_POST_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_POST_ENGAGEMENT
    , CONVERSION_DOWNLOADS_POST_VIEW::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_POST_VIEW
    , CONVERSION_DOWNLOADS_SALE_AMOUNT_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_SALE_AMOUNT_ENGAGEMENT
    , CONVERSION_DOWNLOADS_SALE_AMOUNT_VIEW::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_SALE_AMOUNT_VIEW
    , CONVERSION_DOWNLOADS_SALE_AMOUNT::NUMBER(38,0)  AS CONVERSION_DOWNLOADS_SALE_AMOUNT
    , CONVERSION_PURCHASES_ASSISTED::NUMBER(38,0)  AS CONVERSION_PURCHASES_ASSISTED
    , CONVERSION_PURCHASES_METRIC::NUMBER(38,0)  AS CONVERSION_PURCHASES_METRIC
    , CONVERSION_PURCHASES_ORDER_QUANTITY_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_PURCHASES_ORDER_QUANTITY_ENGAGEMENT
    , CONVERSION_PURCHASES_ORDER_QUANTITY_VIEW::NUMBER(38,0)  AS CONVERSION_PURCHASES_ORDER_QUANTITY_VIEW
    , CONVERSION_PURCHASES_ORDER_QUANTITY::NUMBER(38,0)  AS CONVERSION_PURCHASES_ORDER_QUANTITY
    , CONVERSION_PURCHASES_POST_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_PURCHASES_POST_ENGAGEMENT
    , CONVERSION_PURCHASES_POST_VIEW::NUMBER(38,0)  AS CONVERSION_PURCHASES_POST_VIEW
    , CONVERSION_PURCHASES_SALE_AMOUNT_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_PURCHASES_SALE_AMOUNT_ENGAGEMENT
    , CONVERSION_PURCHASES_SALE_AMOUNT_VIEW::NUMBER(38,0)  AS CONVERSION_PURCHASES_SALE_AMOUNT_VIEW
    , CONVERSION_PURCHASES_SALE_AMOUNT::NUMBER(38,0)  AS CONVERSION_PURCHASES_SALE_AMOUNT
    , CONVERSION_SIGN_UPS_ASSISTED::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_ASSISTED
    , CONVERSION_SIGN_UPS_METRIC::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_METRIC
    , CONVERSION_SIGN_UPS_ORDER_QUANTITY_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_ORDER_QUANTITY_ENGAGEMENT
    , CONVERSION_SIGN_UPS_ORDER_QUANTITY_VIEW::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_ORDER_QUANTITY_VIEW
    , CONVERSION_SIGN_UPS_ORDER_QUANTITY::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_ORDER_QUANTITY
    , CONVERSION_SIGN_UPS_POST_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_POST_ENGAGEMENT
    , CONVERSION_SIGN_UPS_POST_VIEW::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_POST_VIEW
    , CONVERSION_SIGN_UPS_SALE_AMOUNT_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_SALE_AMOUNT_ENGAGEMENT
    , CONVERSION_SIGN_UPS_SALE_AMOUNT_VIEW::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_SALE_AMOUNT_VIEW
    , CONVERSION_SIGN_UPS_SALE_AMOUNT::NUMBER(38,0)  AS CONVERSION_SIGN_UPS_SALE_AMOUNT
    , CONVERSION_SITE_VISITS_METRIC::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_METRIC
    , CONVERSION_SITE_VISITS_ORDER_QUANTITY_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_ORDER_QUANTITY_ENGAGEMENT
    , CONVERSION_SITE_VISITS_ORDER_QUANTITY_VIEW::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_ORDER_QUANTITY_VIEW
    , CONVERSION_SITE_VISITS_ORDER_QUANTITY::NUMBER(38,0)   AS CONVERSION_SITE_VISITS_ORDER_QUANTITY
    , CONVERSION_SITE_VISITS_POST_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_POST_ENGAGEMENT
    , CONVERSION_SITE_VISITS_POST_VIEW::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_POST_VIEW
    , CONVERSION_SITE_VISITS_SALE_AMOUNT_ENGAGEMENT::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_SALE_AMOUNT_ENGAGEMENT
    , CONVERSION_SITE_VISITS_SALE_AMOUNT_VIEW::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_SALE_AMOUNT_VIEW
    , CONVERSION_SITE_VISITS_SALE_AMOUNT::NUMBER(38,0)  AS CONVERSION_SITE_VISITS_SALE_AMOUNT

    , MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_ASSISTED
    , MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_ORDER_QUANTITY
    , MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_POST_ENGAGEMENT
    , MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_POST_VIEW
    , MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_ACHIEVEMENTS_UNLOCKED_SALE_AMOUNT
    , MOBILE_CONVERSION_ADD_TO_CARTS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_CARTS_ASSISTED
    , MOBILE_CONVERSION_ADD_TO_CARTS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_CARTS_ORDER_QUANTITY
    , MOBILE_CONVERSION_ADD_TO_CARTS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_CARTS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_ADD_TO_CARTS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_CARTS_POST_VIEW
    , MOBILE_CONVERSION_ADD_TO_CARTS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_CARTS_SALE_AMOUNT
    , MOBILE_CONVERSION_ADD_TO_WISHLISTS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_WISHLISTS_ASSISTED
    , MOBILE_CONVERSION_ADD_TO_WISHLISTS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_WISHLISTS_ORDER_QUANTITY
    , MOBILE_CONVERSION_ADD_TO_WISHLISTS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_WISHLISTS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_ADD_TO_WISHLISTS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_WISHLISTS_POST_VIEW
    , MOBILE_CONVERSION_ADD_TO_WISHLISTS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_ADD_TO_WISHLISTS_SALE_AMOUNT
    , MOBILE_CONVERSION_CHECKOUTS_INITIATED_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_CHECKOUTS_INITIATED_ASSISTED
    , MOBILE_CONVERSION_CHECKOUTS_INITIATED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_CHECKOUTS_INITIATED_ORDER_QUANTITY
    , MOBILE_CONVERSION_CHECKOUTS_INITIATED_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_CHECKOUTS_INITIATED_POST_ENGAGEMENT
    , MOBILE_CONVERSION_CHECKOUTS_INITIATED_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_CHECKOUTS_INITIATED_POST_VIEW
    , MOBILE_CONVERSION_CHECKOUTS_INITIATED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_CHECKOUTS_INITIATED_SALE_AMOUNT
    , MOBILE_CONVERSION_CONTENT_VIEWS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_CONTENT_VIEWS_ASSISTED
    , MOBILE_CONVERSION_CONTENT_VIEWS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_CONTENT_VIEWS_ORDER_QUANTITY
    , MOBILE_CONVERSION_CONTENT_VIEWS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_CONTENT_VIEWS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_CONTENT_VIEWS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_CONTENT_VIEWS_POST_VIEW
    , MOBILE_CONVERSION_CONTENT_VIEWS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_CONTENT_VIEWS_SALE_AMOUNT
    , MOBILE_CONVERSION_DOWNLOADS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_DOWNLOADS_ORDER_QUANTITY
    , MOBILE_CONVERSION_DOWNLOADS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_DOWNLOADS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_DOWNLOADS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_DOWNLOADS_POST_VIEW
    , MOBILE_CONVERSION_DOWNLOADS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_DOWNLOADS_SALE_AMOUNT
    , MOBILE_CONVERSION_INSTALLS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_INSTALLS_ASSISTED
    , MOBILE_CONVERSION_INSTALLS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_INSTALLS_ORDER_QUANTITY
    , MOBILE_CONVERSION_INSTALLS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_INSTALLS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_INSTALLS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_INSTALLS_POST_VIEW
    , MOBILE_CONVERSION_INSTALLS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_INSTALLS_SALE_AMOUNT
    , MOBILE_CONVERSION_INVITES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_INVITES_ASSISTED
    , MOBILE_CONVERSION_INVITES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_INVITES_ORDER_QUANTITY
    , MOBILE_CONVERSION_INVITES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_INVITES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_INVITES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_INVITES_POST_VIEW
    , MOBILE_CONVERSION_INVITES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_INVITES_SALE_AMOUNT
    , MOBILE_CONVERSION_KEY_PAGE_VIEWS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_KEY_PAGE_VIEWS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_KEY_PAGE_VIEWS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_KEY_PAGE_VIEWS_POST_VIEW
    , MOBILE_CONVERSION_LEVELS_ACHIEVED_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_LEVELS_ACHIEVED_ASSISTED
    , MOBILE_CONVERSION_LEVELS_ACHIEVED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LEVELS_ACHIEVED_ORDER_QUANTITY
    , MOBILE_CONVERSION_LEVELS_ACHIEVED_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_LEVELS_ACHIEVED_POST_ENGAGEMENT
    , MOBILE_CONVERSION_LEVELS_ACHIEVED_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_LEVELS_ACHIEVED_POST_VIEW
    , MOBILE_CONVERSION_LEVELS_ACHIEVED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LEVELS_ACHIEVED_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ACHIEVEMENTS_UNLOCKED_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_CARTS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_ADD_TO_WISHLISTS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CHECKOUTS_INITIATED_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_CONTENT_VIEWS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_INVITES_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LEVELS_ACHIEVED_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_LOGINS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PAYMENT_INFO_ADDITIONS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_PURCHASES_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_RATES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RATES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_RATES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RATES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_RATES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RATES_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_RESERVATIONS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SEARCHES_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SHARES_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SIGN_UPS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_SPENT_CREDITS_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_TUTORIALS_COMPLETED_SALE_AMOUNT
    , MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_METRIC::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_METRIC
    , MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_ORDER_QUANTITY
    , MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LIFETIME_VALUE_UPDATES_SALE_AMOUNT
    , MOBILE_CONVERSION_LOGINS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_LOGINS_ASSISTED
    , MOBILE_CONVERSION_LOGINS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_LOGINS_ORDER_QUANTITY
    , MOBILE_CONVERSION_LOGINS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_LOGINS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_LOGINS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_LOGINS_POST_VIEW
    , MOBILE_CONVERSION_LOGINS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_LOGINS_SALE_AMOUNT
    , MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_ASSISTED
    , MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_ORDER_QUANTITY
    , MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_POST_VIEW
    , MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_PAYMENT_INFO_ADDITIONS_SALE_AMOUNT
    , MOBILE_CONVERSION_PURCHASES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_PURCHASES_ASSISTED
    , MOBILE_CONVERSION_PURCHASES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_PURCHASES_ORDER_QUANTITY
    , MOBILE_CONVERSION_PURCHASES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_PURCHASES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_PURCHASES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_PURCHASES_POST_VIEW
    , MOBILE_CONVERSION_PURCHASES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_PURCHASES_SALE_AMOUNT
    , MOBILE_CONVERSION_RATES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_RATES_ASSISTED
    , MOBILE_CONVERSION_RATES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_RATES_ORDER_QUANTITY
    , MOBILE_CONVERSION_RATES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_RATES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_RATES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_RATES_POST_VIEW
    , MOBILE_CONVERSION_RATES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_RATES_SALE_AMOUNT
    , MOBILE_CONVERSION_RE_ENGAGES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_RE_ENGAGES_ASSISTED
    , MOBILE_CONVERSION_RE_ENGAGES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_RE_ENGAGES_ORDER_QUANTITY
    , MOBILE_CONVERSION_RE_ENGAGES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_RE_ENGAGES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_RE_ENGAGES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_RE_ENGAGES_POST_VIEW
    , MOBILE_CONVERSION_RE_ENGAGES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_RE_ENGAGES_SALE_AMOUNT
    , MOBILE_CONVERSION_RESERVATIONS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_RESERVATIONS_ASSISTED
    , MOBILE_CONVERSION_RESERVATIONS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_RESERVATIONS_ORDER_QUANTITY
    , MOBILE_CONVERSION_RESERVATIONS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_RESERVATIONS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_RESERVATIONS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_RESERVATIONS_POST_VIEW
    , MOBILE_CONVERSION_RESERVATIONS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_RESERVATIONS_SALE_AMOUNT
    , MOBILE_CONVERSION_SEARCHES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_SEARCHES_ASSISTED
    , MOBILE_CONVERSION_SEARCHES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_SEARCHES_ORDER_QUANTITY
    , MOBILE_CONVERSION_SEARCHES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_SEARCHES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_SEARCHES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_SEARCHES_POST_VIEW
    , MOBILE_CONVERSION_SEARCHES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_SEARCHES_SALE_AMOUNT
    , MOBILE_CONVERSION_SHARES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_SHARES_ASSISTED
    , MOBILE_CONVERSION_SHARES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_SHARES_ORDER_QUANTITY
    , MOBILE_CONVERSION_SHARES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_SHARES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_SHARES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_SHARES_POST_VIEW
    , MOBILE_CONVERSION_SHARES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_SHARES_SALE_AMOUNT
    , MOBILE_CONVERSION_SIGN_UPS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_SIGN_UPS_ASSISTED
    , MOBILE_CONVERSION_SIGN_UPS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_SIGN_UPS_ORDER_QUANTITY
    , MOBILE_CONVERSION_SIGN_UPS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_SIGN_UPS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_SIGN_UPS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_SIGN_UPS_POST_VIEW
    , MOBILE_CONVERSION_SIGN_UPS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_SIGN_UPS_SALE_AMOUNT
    , MOBILE_CONVERSION_SITE_VISITS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_SITE_VISITS_ORDER_QUANTITY
    , MOBILE_CONVERSION_SITE_VISITS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_SITE_VISITS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_SITE_VISITS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_SITE_VISITS_POST_VIEW
    , MOBILE_CONVERSION_SITE_VISITS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_SITE_VISITS_SALE_AMOUNT
    , MOBILE_CONVERSION_SPENT_CREDITS_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_SPENT_CREDITS_ASSISTED
    , MOBILE_CONVERSION_SPENT_CREDITS_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_SPENT_CREDITS_ORDER_QUANTITY
    , MOBILE_CONVERSION_SPENT_CREDITS_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_SPENT_CREDITS_POST_ENGAGEMENT
    , MOBILE_CONVERSION_SPENT_CREDITS_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_SPENT_CREDITS_POST_VIEW
    , MOBILE_CONVERSION_SPENT_CREDITS_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_SPENT_CREDITS_SALE_AMOUNT
    , MOBILE_CONVERSION_TUTORIALS_COMPLETED_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_TUTORIALS_COMPLETED_ASSISTED
    , MOBILE_CONVERSION_TUTORIALS_COMPLETED_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_TUTORIALS_COMPLETED_ORDER_QUANTITY
    , MOBILE_CONVERSION_TUTORIALS_COMPLETED_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_TUTORIALS_COMPLETED_POST_ENGAGEMENT
    , MOBILE_CONVERSION_TUTORIALS_COMPLETED_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_TUTORIALS_COMPLETED_POST_VIEW
    , MOBILE_CONVERSION_TUTORIALS_COMPLETED_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_TUTORIALS_COMPLETED_SALE_AMOUNT
    , MOBILE_CONVERSION_UPDATES_ASSISTED::NUMBER(38,0)  AS MOBILE_CONVERSION_UPDATES_ASSISTED
    , MOBILE_CONVERSION_UPDATES_ORDER_QUANTITY::NUMBER(38,0)  AS MOBILE_CONVERSION_UPDATES_ORDER_QUANTITY
    , MOBILE_CONVERSION_UPDATES_POST_ENGAGEMENT::NUMBER(38,0)  AS MOBILE_CONVERSION_UPDATES_POST_ENGAGEMENT
    , MOBILE_CONVERSION_UPDATES_POST_VIEW::NUMBER(38,0)  AS MOBILE_CONVERSION_UPDATES_POST_VIEW
    , MOBILE_CONVERSION_UPDATES_SALE_AMOUNT::NUMBER(38,0)  AS MOBILE_CONVERSION_UPDATES_SALE_AMOUNT

    , POLL_CARD_VOTE::NUMBER(38,0)  AS POLL_CARD_VOTE

    , VIDEO_3_S_100_PCT_VIEWS::NUMBER(38,0)  AS VIDEO_3_S_100_PCT_VIEWS
    , VIDEO_6_S_VIEWS::NUMBER(38,0)  AS VIDEO_6_S_VIEWS
    , VIDEO_CONTENT_STARTS_WITH_50_PTC_VIEW_AND_AUDIO::NUMBER(38,0)  AS VIDEO_CONTENT_STARTS_WITH_50_PTC_VIEW_AND_AUDIO
    , VIDEO_CONTENT_STARTS_WITH_50_PTC_VIEW::NUMBER(38,0)  AS VIDEO_CONTENT_STARTS_WITH_50_PTC_VIEW
    , VIDEO_CONTENT_STARTS_WITH_AUDIO::NUMBER(38,0)  AS VIDEO_CONTENT_STARTS_WITH_AUDIO
    , VIDEO_CONTENT_STARTS::NUMBER(38,0)  AS VIDEO_CONTENT_STARTS
    , VIDEO_CTA_CLICKS::NUMBER(38,0)  AS VIDEO_CTA_CLICKS
    , VIDEO_MRC_VIEWS::NUMBER(38,0)  AS VIDEO_MRC_VIEWS
    , VIDEO_TOTAL_VIEWS::NUMBER(38,0)  AS VIDEO_TOTAL_VIEWS
    , VIDEO_VIEWS_100_WITH_50_PTC_VIEW_AND_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_100_WITH_50_PTC_VIEW_AND_AUDIO
    , VIDEO_VIEWS_100_WITH_50_PTC_VIEW::NUMBER(38,0)  AS VIDEO_VIEWS_100_WITH_50_PTC_VIEW
    , VIDEO_VIEWS_100_WITH_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_100_WITH_AUDIO
    , VIDEO_VIEWS_100::NUMBER(38,0)  AS VIDEO_VIEWS_100
    , VIDEO_VIEWS_25_WITH_50_PTC_VIEW_AND_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_25_WITH_50_PTC_VIEW_AND_AUDIO
    , VIDEO_VIEWS_25_WITH_50_PTC_VIEW::NUMBER(38,0)  AS VIDEO_VIEWS_25_WITH_50_PTC_VIEW
    , VIDEO_VIEWS_25_WITH_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_25_WITH_AUDIO
    , VIDEO_VIEWS_25::NUMBER(38,0)  AS VIDEO_VIEWS_25
    , VIDEO_VIEWS_50_WITH_50_PTC_VIEW_AND_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_50_WITH_50_PTC_VIEW_AND_AUDIO
    , VIDEO_VIEWS_50_WITH_50_PTC_VIEW::NUMBER(38,0)  AS VIDEO_VIEWS_50_WITH_50_PTC_VIEW
    , VIDEO_VIEWS_50_WITH_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_50_WITH_AUDIO
    , VIDEO_VIEWS_50::NUMBER(38,0)  AS VIDEO_VIEWS_50
    , VIDEO_VIEWS_75_WITH_50_PTC_VIEW_AND_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_75_WITH_50_PTC_VIEW_AND_AUDIO
    , VIDEO_VIEWS_75_WITH_50_PTC_VIEW::NUMBER(38,0)  AS VIDEO_VIEWS_75_WITH_50_PTC_VIEW
    , VIDEO_VIEWS_75_WITH_AUDIO::NUMBER(38,0)  AS VIDEO_VIEWS_75_WITH_AUDIO
    , VIDEO_VIEWS_75::NUMBER(38,0)  AS VIDEO_VIEWS_75

FROM "TWITTER_ADS"."LINE_ITEM_REPORT"
;
