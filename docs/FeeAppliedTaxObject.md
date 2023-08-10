# OpenapiClient::FeeAppliedTaxObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_fee_id** | **String** | Unique identifier of the fee, created by Lago. | [optional] |
| **lago_id** | **String** | Unique identifier of the applied tax, created by Lago. | [optional] |
| **lago_tax_id** | **String** | Unique identifier of the tax, created by Lago. | [optional] |
| **tax_name** | **String** | Name of the tax. | [optional] |
| **tax_code** | **String** | Unique code used to identify the tax associated with the API request. | [optional] |
| **tax_rate** | **Float** | The percentage rate of the tax | [optional] |
| **tax_description** | **String** | Internal description of the taxe | [optional] |
| **amount_cents** | **Integer** | Amount of the tax | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |
| **created_at** | **Time** | The date and time when the applied tax was created. It is expressed in UTC format according to the ISO 8601 datetime standard. This field provides the timestamp for the exact moment when the applied tax was initially created. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FeeAppliedTaxObject.new(
  lago_fee_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  lago_tax_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  tax_name: TVA,
  tax_code: french_standard_vat,
  tax_rate: 20,
  tax_description: French standard VAT,
  amount_cents: 2000,
  amount_currency: null,
  created_at: 2022-09-14T16:35:31Z
)
```

