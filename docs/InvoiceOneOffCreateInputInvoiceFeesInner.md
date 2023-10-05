# LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_on_code** | **String** | The code of the add-on used as invoice item. |  |
| **invoice_display_name** | **String** | Specifies the name that will be displayed on an invoice. If no value is set for this field, the name of the actual charge will be used as the default display name. | [optional] |
| **unit_amount_cents** | **Integer** | The amount of the fee per unit, expressed in cents. By default, the amount of the add-on is used. | [optional] |
| **units** | **String** | The quantity of units associated with the fee. By default, only 1 unit is added to the invoice. | [optional] |
| **description** | **String** | This is a description | [optional] |
| **tax_codes** | **Array&lt;String&gt;** | List of unique code used to identify the taxes. | [optional] |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::InvoiceOneOffCreateInputInvoiceFeesInner.new(
  add_on_code: setup_fee,
  invoice_display_name: Setup Fee (SF1),
  unit_amount_cents: 12000,
  units: 2.5,
  description: The description of the fee line item in the invoice. By default, the description of the add-on is used.,
  tax_codes: [&quot;french_standard_vat&quot;]
)
```

