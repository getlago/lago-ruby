# OpenapiClient::InvoiceOneOffCreateInputInvoiceFeesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_on_code** | **String** | The code of the add-on used as invoice item. |  |
| **unit_amount_cents** | **Integer** | The amount of the fee per unit, expressed in cents. By default, the amount of the add-on is used. | [optional] |
| **units** | **String** | The quantity of units associated with the fee. By default, only 1 unit is added to the invoice. | [optional] |
| **description** | **String** | This is a description | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceOneOffCreateInputInvoiceFeesInner.new(
  add_on_code: setup_fee,
  unit_amount_cents: 12000,
  units: 2.5,
  description: The description of the fee line item in the invoice. By default, the description of the add-on is used.
)
```

