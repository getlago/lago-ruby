# OpenapiClient::CustomerUsageObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_datetime** | **Time** | The lower bound of the billing period, expressed in the ISO 8601 datetime format in Coordinated Universal Time (UTC). |  |
| **to_datetime** | **Time** | The upper bound of the billing period, expressed in the ISO 8601 datetime format in Coordinated Universal Time (UTC). |  |
| **issuing_date** | **Time** | The date of creation of the invoice. |  |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **amount_cents** | **Integer** | The amount in cents, tax excluded. |  |
| **taxes_amount_cents** | **Integer** | The tax amount in cents. |  |
| **total_amount_cents** | **Integer** | The total amount in cents, tax included. |  |
| **charges_usage** | [**Array&lt;CustomerChargeUsageObject&gt;**](CustomerChargeUsageObject.md) | Array of charges that comprise the current usage. It contains detailed information about individual charge items associated with the usage. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CustomerUsageObject.new(
  from_datetime: 2022-07-01T00:00Z,
  to_datetime: 2022-07-31T23:59:59Z,
  issuing_date: 2022-08-01T23:59:59Z,
  currency: null,
  amount_cents: 123,
  taxes_amount_cents: 200,
  total_amount_cents: 123,
  charges_usage: null
)
```

