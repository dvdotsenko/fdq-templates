CREATE OR REPLACE VIEW "FACEBOOK_VIEWS"."ENTITY_ACCOUNTS" AS
SELECT

	ID::VARCHAR  AS ACCOUNT_ID
    , NAME::VARCHAR(256)  AS ACCOUNT_NAME
    , AGE::FLOAT  AS ACCOUNT_AGE
	, AMOUNT_SPENT::NUMBER(38,0)  AS AMOUNT_SPENT
	, BALANCE::NUMBER(38,0)  AS BALANCE
	, BUSINESS_CITY::VARCHAR(256)  AS BUSINESS_CITY
	, BUSINESS_COUNTRY_CODE::VARCHAR(256)  AS BUSINESS_COUNTRY_CODE
	, BUSINESS_NAME::VARCHAR(256)  AS BUSINESS_NAME
	, BUSINESS_STATE::VARCHAR(256)  AS BUSINESS_STATE
	, BUSINESS_STREET::VARCHAR(256)  AS BUSINESS_STREET
	, BUSINESS_STREET_2::VARCHAR(256)  AS BUSINESS_STREET_2
	, BUSINESS_ZIP::VARCHAR(256)  AS BUSINESS_ZIP
	, CAN_CREATE_BRAND_LIFT_STUDY::BOOLEAN  AS CAN_CREATE_BRAND_LIFT_STUDY
	, CREATED_TIME::TIMESTAMP_TZ(9)  AS CREATED_TIME
	, CURRENCY::VARCHAR(256)  AS CURRENCY
	, END_ADVERTISER::NUMBER(38,0)  AS END_ADVERTISER
	, END_ADVERTISER_NAME::VARCHAR(256)  AS END_ADVERTISER_NAME
	, HAS_MIGRATED_PERMISSIONS::BOOLEAN  AS HAS_MIGRATED_PERMISSIONS
	, IO_NUMBER::NUMBER(38,0)  AS IO_NUMBER
	, IS_ATTRIBUTION_SPEC_SYSTEM_DEFAULT::BOOLEAN  AS IS_ATTRIBUTION_SPEC_SYSTEM_DEFAULT
	, IS_DIRECT_DEALS_ENABLED::BOOLEAN  AS IS_DIRECT_DEALS_ENABLED
	, IS_NOTIFICATIONS_ENABLED::BOOLEAN  AS IS_NOTIFICATIONS_ENABLED
	, IS_PERSONAL::NUMBER(38,0)  AS IS_PERSONAL
	, IS_PREPAY_ACCOUNT::BOOLEAN  AS IS_PREPAY_ACCOUNT
	, IS_TAX_ID_REQUIRED::BOOLEAN  AS IS_TAX_ID_REQUIRED
	, MEDIA_AGENCY::NUMBER(38,0)  AS MEDIA_AGENCY
	, MIN_CAMPAIGN_GROUP_SPEND_CAP::NUMBER(38,0)  AS MIN_CAMPAIGN_GROUP_SPEND_CAP
	, MIN_DAILY_BUDGET::NUMBER(38,0)  AS MIN_DAILY_BUDGET
	, NEXT_BILL_DATE::TIMESTAMP_TZ(9)  AS NEXT_BILL_DATE
	, OFFSITE_PIXELS_TOS_ACCEPTED::BOOLEAN  AS OFFSITE_PIXELS_TOS_ACCEPTED
	, OWNER::NUMBER(38,0)  AS OWNER
	, PARTNER::NUMBER(38,0)  AS PARTNER
	, SALESFORCE_INVOICE_GROUP_ID::VARCHAR(256)  AS SALESFORCE_INVOICE_GROUP_ID
	, SPEND_CAP::NUMBER(38,0)  AS SPEND_CAP
	, TAX_ID::VARCHAR(256)  AS TAX_ID
	, TAX_ID_TYPE::VARCHAR(256)  AS TAX_ID_TYPE
	, TIMEZONE_ID::VARCHAR  AS TIMEZONE_ID
	, TIMEZONE_NAME::VARCHAR(256)  AS TIMEZONE_NAME
	, TIMEZONE_OFFSET_HOURS_UTC::FLOAT  AS TIMEZONE_OFFSET_HOURS_UTC
	, ACCOUNT_STATUS::VARCHAR(256)  AS ACCOUNT_STATUS
	, DISABLE_REASON::VARCHAR(256)  AS DISABLE_REASON
	, TAX_ID_STATUS::VARCHAR(256)  AS TAX_ID_STATUS
	, AGENCY_CLIENT_DECLARATION_AGENCY_REPRESENTING_CLIENT::NUMBER(38,0)  AS AGENCY_CLIENT_DECLARATION_AGENCY_REPRESENTING_CLIENT
	, AGENCY_CLIENT_DECLARATION_CLIENT_BASED_IN_FRANCE::NUMBER(38,0)  AS AGENCY_CLIENT_DECLARATION_CLIENT_BASED_IN_FRANCE
	, AGENCY_CLIENT_DECLARATION_CLIENT_CITY::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_CITY
	, AGENCY_CLIENT_DECLARATION_CLIENT_COUNTRY_CODE::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_COUNTRY_CODE
	, AGENCY_CLIENT_DECLARATION_CLIENT_EMAIL_ADDRESS::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_EMAIL_ADDRESS
	, AGENCY_CLIENT_DECLARATION_CLIENT_NAME::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_NAME
	, AGENCY_CLIENT_DECLARATION_CLIENT_POSTAL_CODE::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_POSTAL_CODE
	, AGENCY_CLIENT_DECLARATION_CLIENT_PROVINCE::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_PROVINCE
	, AGENCY_CLIENT_DECLARATION_CLIENT_STREET::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_STREET
	, AGENCY_CLIENT_DECLARATION_CLIENT_STREET_2::VARCHAR(256)  AS AGENCY_CLIENT_DECLARATION_CLIENT_STREET_2
	, AGENCY_CLIENT_DECLARATION_HAS_WRITTEN_MANDATE_FROM_ADVERTISER::NUMBER(38,0)  AS AGENCY_CLIENT_DECLARATION_HAS_WRITTEN_MANDATE_FROM_ADVERTISER
	, AGENCY_CLIENT_DECLARATION_IS_CLIENT_PAYING_INVOICES::NUMBER(38,0)  AS AGENCY_CLIENT_DECLARATION_IS_CLIENT_PAYING_INVOICES
	, BUSINESS_MANAGER_NAME::VARCHAR(256)  AS BUSINESS_MANAGER_NAME
	, BUSINESS_MANAGER_TIMEZONE_ID::VARCHAR  AS BUSINESS_MANAGER_TIMEZONE_ID
	, BUSINESS_MANAGER_PRIMARY_PAGE::VARCHAR(256)  AS BUSINESS_MANAGER_PRIMARY_PAGE
	, BUSINESS_MANAGER_UPDATED_BY::VARCHAR(256)  AS BUSINESS_MANAGER_UPDATED_BY
	, BUSINESS_MANAGER_CREATED_BY::VARCHAR(256)  AS BUSINESS_MANAGER_CREATED_BY
	, BUSINESS_MANAGER_UPDATE_TIME::TIMESTAMP_TZ(9)  AS BUSINESS_MANAGER_UPDATE_TIME
	, BUSINESS_MANAGER_CREATED_TIME::TIMESTAMP_TZ(9)  AS BUSINESS_MANAGER_CREATED_TIME
	, BUSINESS_MANAGER_MANAGER_ID::VARCHAR  AS BUSINESS_MANAGER_MANAGER_ID
	, TOS_ACCEPTED_CUSTOM_AUDIENCE_TOS::NUMBER(38,0)  AS TOS_ACCEPTED_CUSTOM_AUDIENCE_TOS
    , _FIVETRAN_ID::VARCHAR(256)  AS _FIVETRAN_ID
	, _FIVETRAN_SYNCED::TIMESTAMP_TZ(9)  AS _FIVETRAN_SYNCED

FROM
  (
    SELECT
      *,
      ROW_NUMBER() OVER (
        Partition By ID
        ORDER BY
          _FIVETRAN_SYNCED DESC
      ) ___R
    FROM
      "FACEBOOK"."ACCOUNT_HISTORY"
  )
WHERE ___R = 1
;