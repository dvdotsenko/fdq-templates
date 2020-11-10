CREATE OR REPLACE VIEW "BING_ADS_VIEWS"."ENTITY_ACCOUNTS" AS
SELECT
  DT.ID AS ACCOUNT_ID,
  LAST_MODIFIED_TIME,
  AUTO_TAG_TYPE,
  BACK_UP_PAYMENT_INSTRUMENT_ID,
  BILL_TO_CUSTOMER_ID,
  BILLING_THRESHOLD_AMOUNT,
  CURRENCY_CODE,
  ACCOUNT_FINANCIAL_STATUS,
  LANGUAGE,
  ACCOUNT_LIFE_CYCLE_STATUS,
  LAST_MODIFIED_BY_USER_ID,
  NAME,
  NUMBER,
  PARENT_CUSTOMER_ID,
  PAUSE_REASON,
  PAYMENT_METHOD_ID,
  PAYMENT_METHOD_TYPE,
  PRIMARY_USER_ID,
  SALES_HOUSE_CUSTOMER_ID,
  SOLD_TO_PAYMENT_INSTRUMENT_ID,
  TIME_ZONE,
  BUSINESS_NAME,
  BUSINESS_ADDRESS_CITY,
  BUSINESS_ADDRESS_COUNTRY_CODE,
  BUSINESS_ADDRESS_ID,
  BUSINESS_ADDRESS_LINE_1,
  BUSINESS_ADDRESS_LINE_2,
  BUSINESS_ADDRESS_LINE_3,
  BUSINESS_ADDRESS_LINE_4,
  BUSINESS_ADDRESS_POSTAL_CODE,
  BUSINESS_ADDRESS_STATE_OR_PROVINCE
FROM
  (
    SELECT
      *,
      ROW_NUMBER() OVER (
        Partition By ID
        ORDER BY
          LAST_MODIFIED_TIME DESC
      ) ___R
    FROM
      "BING_ADS"."ACCOUNT_HISTORY"
  ) DT
WHERE
  DT.___R = 1;