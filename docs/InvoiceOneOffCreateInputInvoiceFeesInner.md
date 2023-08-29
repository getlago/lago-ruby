# LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_on_code** | **String** | The code of the add-on used as invoice item. |  |
| **unit_amount_cents** | **Integer** | The amount of the fee per unit, expressed in cents. By default, the amount of the add-on is used. | [optional] |
| **units** | **String** | The quantity of units associated with the fee. By default, only 1 unit is added to the invoice. | [optional] |
| **description** | **String** | This is a description | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner.new(
  add_on_code: setup_fee,
  unit_amount_cents: 12000,
  units: 2.5,
  description: The description of the fee line item in the invoice. By default, the description of the add-on is used.,
  tax_codes: [&quot;french_standard_vat&quot;]
)
```

