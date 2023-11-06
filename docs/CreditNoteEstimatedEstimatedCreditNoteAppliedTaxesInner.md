# LagoAPI::CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_tax_id** | **String** | Unique identifier of the tax, created by Lago. | [optional] |
| **tax_name** | **String** | Name of the tax. | [optional] |
| **tax_code** | **String** | Unique code used to identify the tax associated with the API request. | [optional] |
| **tax_rate** | **Float** | The percentage rate of the tax | [optional] |
| **tax_description** | **String** | Internal description of the taxe | [optional] |
| **base_amount_cents** | **Integer** |  | [optional] |
| **amount_cents** | **Integer** | Amount of the tax | [optional] |
| **amount_currency** | [**Currency**](Currency.md) |  | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditNoteEstimatedEstimatedCreditNoteAppliedTaxesInner.new(
  lago_tax_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  tax_name: TVA,
  tax_code: french_standard_vat,
  tax_rate: 20,
  tax_description: French standard VAT,
  base_amount_cents: 100,
  amount_cents: 2000,
  amount_currency: null
)
```

