# LagoAPI::CreditObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lago_id** | **String** | Unique identifier assigned to the credit within the Lago application. This ID is exclusively created by Lago and serves as a unique identifier for the credit’s item record within the Lago system. |  |
| **amount_cents** | **Integer** | The amount of credit associated with the invoice, expressed in cents. |  |
| **amount_currency** | [**Currency**](Currency.md) |  |  |
| **before_taxes** | **Boolean** | Indicates whether the credit is applied on the amount before taxes (coupons) or after taxes (credit notes). This flag helps determine the order in which credits are applied to the invoice calculation |  |
| **item** | [**CreditObjectItem**](CreditObjectItem.md) |  |  |
| **invoice** | [**CreditObjectInvoice**](CreditObjectInvoice.md) |  |  |

## Example

```ruby
require 'lago_ruby'

instance = LagoAPI::CreditObject.new(
  lago_id: 1a901a90-1a90-1a90-1a90-1a901a901a90,
  amount_cents: 1200,
  amount_currency: null,
  before_taxes: false,
  item: null,
  invoice: null
)
```

